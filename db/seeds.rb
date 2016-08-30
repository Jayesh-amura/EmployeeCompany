# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





companies = [["Amura","9226289380"],
			 ["BMC","9890809816"],
			 ["Praxify","9403480725"],
			 ["Practo","7083906696"],
			 ["Voyalabs","7385627501"]]


companies.each do |c|
	Company.create(company_name: c[0],company_phone: c[1]);
end

#name phone email designation salary
employees = [["Jayesh","9890109712","jayesh@amuratech.com","SWE",45000],
			["Bhushan","9890109713","Bhushan@amuratech.com","SWE",45000],
			["Shubham","7890109712","Shubham@amuratech.com","SWE",15000],
			["Amrut","9830109712","amrut@amuratech.com","SWE",35000],
			["Akash","9290109712","Akash@amuratech.com","SWE",45000]]

employees.each do |e|
	Employee.create(name: e[0],phone: e[1],email: e[2],
		designation: e[3],salary: e[4],company_id: 1)
end


Employee.create(name: "rohit",phone: "7456837249",email: "rohit@bmc.com",company_id: 2,designation: "DA",salary: 50000)


Company.find_by(company_name: "Amura").create_address(city:"pune",country: "INDIA")
Company.find_by(company_name: "BMC").create_address(city:"pune",country: "INDIA")
Company.find_by(company_name: "Practo").create_address(city:"mumbai",country: "INDIA")
Company.find_by(company_name: "Praxify").create_address(city:"bangalore",country: "INDIA")
Company.find_by(company_name: "Voyalabs").create_address(city:"pune",country: "INDIA")


Employee.find_by_name("Bhushan").create_address(city: "pune",country: "INDIA")
Employee.find_by_name("Jayesh").create_address(city: "pune",country: "INDIA")
Employee.find_by_name("Shubham").create_address(city: "vienna",country: "AUSTRIA")
Employee.find_by_name("Akash").create_address(city: "pune",country: "INDIA")
Employee.find_by_name("Amrut").create_address(city: "dk",country: "UNIDENTIFIED")



#Employee.joins(:address).where("addresses.city = ?","pune").pluck(:name)
#Employee.joins(:address).joins(:company).where("name = ?","Jayesh").pluck(:email,:city,:country,:company_name)
#Employee.where("salary <?",45000).where("salary>?",15000)
