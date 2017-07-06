class CreateBugzillausers < ActiveRecord::Migration
  def change
    create_table :bugzillausers do |t|
      t.string :loginname
      t.string :realname
      t.string :password
      t.boolean :bugmaildisabled
      t.string :disabletext
      t.boolean :adminpermission
      t.boolean :creategroupspermission
      t.boolean :edituserspermission

      t.timestamps null: false
    end
  end
end
