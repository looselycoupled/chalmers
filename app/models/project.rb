class Project < ActiveRecord::Base

  has_many :assets
  has_many :servers, through: :assets
end
