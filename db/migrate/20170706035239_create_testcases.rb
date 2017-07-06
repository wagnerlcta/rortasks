class CreateTestcases < ActiveRecord::Migration
  def change
    create_table :testcases do |t|
      t.string :code
      t.string :title
      t.string :summary
      t.string :preconditions
      t.string :status
      t.string :importance
      t.integer :minutes

      t.timestamps null: false
    end
  end
end
