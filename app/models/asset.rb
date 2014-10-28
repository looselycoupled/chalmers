class Asset < ActiveRecord::Base

  belongs_to :project
  belongs_to :strategy

  has_many :servers
  has_many :assignments
  has_many :features, through: :assignments


end
