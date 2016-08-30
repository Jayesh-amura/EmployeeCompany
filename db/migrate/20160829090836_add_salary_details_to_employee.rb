class AddSalaryDetailsToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :designation, :string
    add_column :employees, :salary, :float
  end
end
