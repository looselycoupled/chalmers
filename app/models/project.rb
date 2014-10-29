class Project < ActiveRecord::Base
  include AASM

  has_many :assets
  has_many :servers, through: :assets


  scope :inactive_projects, -> { where(state: "inactive") }

  # attr_accessor :invalid_payment

  aasm :column => 'state', :whiny_transitions => false do
    state :inactive, initial: true
    state :provisioning
    state :active
    state :dismantling


    event :provision do
      transitions from: :inactive, to: :provisioning
      after do
        puts "I am provisioning"
      end
    end

    event :start do
      transitions from: :provisioning, to: :active
      after do
        puts "I am processing data"
      end
    end

    event :dismantle do
      transitions from: :active, to: :dismantling
      after do
        puts "I am shutting down"
      end
    end

    event :cease do
      transitions from: :dismantling, to: :inactive
      after do
        puts "I have shut down"
      end
    end

  end


end
