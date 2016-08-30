class Employee < ActiveRecord::Base

	validates :name, presence: true, case_sensitive: false
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, 
				uniqueness: {case_sensitive: false},
				length: {maximum: 255}, 
				format: {with: VALID_EMAIL_REGEX}
	
	validates :salary, presence: true
	validates_numericality_of :salary, :greater_than => 0
	
	validates :phone, 
				presence: true, 
				uniqueness: true,
				length: {is: 10}
	
	validates :designation, presence: true
	#, uniqueness: {case_sensitive: false}

	belongs_to :company 
	has_one :address, as: :addressable
end
