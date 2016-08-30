class Company < ActiveRecord::Base
	validates :company_name, 
				presence: true,
				uniqueness: {case_sensitive: false}

	validates :company_phone, 
				presence: true,
				length: {is: 10}

	has_many :employees
	has_one :address, as: :addressable
end
