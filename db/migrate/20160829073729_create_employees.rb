class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :phone
      t.text :email

      t.timestamps null: false
    end
  end
end
