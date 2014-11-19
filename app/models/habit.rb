class Habit < ActiveRecord::Base
	
	has_many :personalities
	has_many :people, through: :personalities

end
