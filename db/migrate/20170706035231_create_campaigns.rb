class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :code
      t.string :owner
      t.string :name
      t.boolean :active
      t.string :type
      t.string :status
      t.date :start
      t.date :end
      t.integer :expectedrevenue
      t.integer :budgetedcost
      t.integer :actualcost
      t.float :expectedresponse
      t.integer :numsent
      t.string :parentcampaign

      t.timestamps null: false
    end
  end
end
