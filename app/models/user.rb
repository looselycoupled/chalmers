class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable,
  # :recoverable
  devise :database_authenticatable, :omniauthable, :lockable,
         :rememberable, :trackable, :validatable
end
