class Destination < ActiveRecord::Base
    has_many :schedules
    has_many :users , through: :schedules
    has_many :reviews
end