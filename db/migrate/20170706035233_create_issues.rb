class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :code
      t.string :project
      t.string :issuetype
      t.string :summary
      t.integer :storypoints
      t.string :priority
      t.date :duedate
      t.string :components
      t.string :affectsversions
      t.string :fixversions
      t.string :assignee
      t.string :environment
      t.string :description
      t.string :labels
      t.string :epic
      t.string :sprint

      t.timestamps null: false
    end
  end
end
