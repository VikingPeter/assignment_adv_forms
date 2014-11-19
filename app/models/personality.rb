class Personality < ActiveRecord::Base
	
	belongs_to :habit
	belongs_to :person

end
