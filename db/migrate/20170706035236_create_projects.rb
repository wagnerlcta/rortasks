class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :identifier
      t.string :homepage
      t.boolean :public
      t.string :subprojectof
      t.boolean :bugtracker
      t.boolean :featuretracker
      t.boolean :supporttracker

      t.timestamps null: false
    end
  end
end
