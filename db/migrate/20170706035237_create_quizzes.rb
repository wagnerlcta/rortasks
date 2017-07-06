class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :code
      t.string :name
      t.string :description
      t.boolean :displaydescription
      t.datetime :open
      t.datetime :close
      t.integer :timelimit
      t.string :whentimeexpires
      t.integer :submissiongraceperiod
      t.string :gradecategory
      t.string :attemptsallowed
      t.string :gradingmethod

      t.timestamps null: false
    end
  end
end
