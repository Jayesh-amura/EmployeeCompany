#Employee.joins(:address).where("addresses.city = ?","pune").pluck(:name)
#Employee.joins(:address).joins(:company).where("name = ?","Jayesh").pluck(:email,:city,:country,:company_name)
#Employee.where("salary <?",45000).where("salary>?",15000)


== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
