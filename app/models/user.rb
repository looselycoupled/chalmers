class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable,
  # :recoverable, :database_authenticatable,
  devise :omniauthable, :lockable,
         :rememberable, :trackable, :validatable

  has_many :identities

  def self.create_with_omniauth(info)
    create(name: info['name'])
  end


  def password
  	Devise.friendly_token[0,20]
  end

end
