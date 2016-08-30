class Address < ActiveRecord::Base
	#belongs_to :company
	#belongs_to :employee
	belongs_to :addressable, polymorphic: true
end
