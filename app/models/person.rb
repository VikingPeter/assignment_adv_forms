class Person < ActiveRecord::Base
	
	def name
		"#{fname} #{lname}"
	end

	has_many :personalities
	has_many :habits, through: :personalities

	has_many :ducks

	accepts_nested_attributes_for :ducks,
																reject_if: :all_blank,
																allow_destroy: true;
end
