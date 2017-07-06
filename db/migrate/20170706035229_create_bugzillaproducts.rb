class CreateBugzillaproducts < ActiveRecord::Migration
  def change
    create_table :bugzillaproducts do |t|
      t.string :code
      t.string :product
      t.string :description
      t.boolean :openforbugentry
      t.boolean :enableunconfirmedstatus
      t.integer :maxvotesperperson
      t.integer :maxvotespersonperbug
      t.integer :confirmbugsvotes
      t.string :version
      t.boolean :createchartdatasets
      t.string :component
      t.string :componentdescription
      t.string :defaultassignee
      t.string :defaultcclist

      t.timestamps null: false
    end
  end
end
