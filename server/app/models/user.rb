class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :generate_api_token

  private
  def generate_api_token
    self.api_token ||= Digest::SHA1.hexdigest(Time.now.to_s + attributes.inspect)
  end
end
