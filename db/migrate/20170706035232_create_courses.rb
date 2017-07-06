class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :fullname
      t.string :shortname
      t.integer :courseidnumber
      t.string :summary
      t.string :format
      t.integer :numberofweekstopics
      t.date :start
      t.string :hiddensections
      t.integer :newsitemstoshow
      t.boolean :showgrades
      t.boolean :showactivityreports
      t.integer :maxuploadsize
      t.string :defaultroles

      t.timestamps null: false
    end
  end
end
