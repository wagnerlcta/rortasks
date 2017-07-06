class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :code
      t.string :product
      t.string :component
      t.string :version
      t.string :summary
      t.string :description
      t.string :hardware
      t.integer :importance
      t.string :targetmilestone
      t.string :assignedto
      t.string :qacontact
      t.string :url
      t.string :whiteboard
      t.string :keywords
      t.string :tags
      t.string :dependson
      t.string :blocks
      t.float :origestimated
      t.float :hoursworked
      t.float :hoursleft
      t.date :deadline
      t.string :additionalcomments
      t.string :status

      t.timestamps null: false
    end
  end
end
