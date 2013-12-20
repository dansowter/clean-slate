class ApplicationController < ActionController::Base
  respond_to :json
  protect_from_forgery with: :null_session

  private
  def render_serialized(resource, options = {})
    render options.merge(json: resource)
                  .reverse_merge(SerializerFactory.new(resource).to_h)
  end
end
