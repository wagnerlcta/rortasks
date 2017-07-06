class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :code
      t.string :owner
      t.string :firstname
      t.string :lastname
      t.string :company
      t.string :title
      t.string :status
      t.string :phone
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :county
      t.string :website
      t.integer :numberofemployees
      t.integer :annualrevenue
      t.string :source
      t.string :industry
      t.string :description

      t.timestamps null: false
    end
  end
end
