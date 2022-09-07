class User < ActiveRecord::Base
    has_many :schedules
    has_many :destinations , through: :schedules
end