class ApplicationController < ActionController::Base
  attr_reader :current_user

  respond_to :json
  protect_from_forgery with: :null_session

  private

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      @current_user = User.find_by(ddg_access_token: token)
    end
  end

  def render_serialized(resource, options = {})
    render options.merge(json: resource)
                  .reverse_merge(SerializerFactory.new(resource).to_h)
  end
end
