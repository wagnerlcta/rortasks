class CreateSalesforceusers < ActiveRecord::Migration
  def change
    create_table :salesforceusers do |t|
      t.string :name
      t.string :alias
      t.string :email
      t.string :username
      t.string :communitynickname
      t.string :title
      t.string :company
      t.string :department
      t.string :division
      t.string :address
      t.string :timezone
      t.string :locale
      t.string :language
      t.string :delegatedapprover
      t.string :manager
      t.string :role
      t.string :userlicense
      t.string :profile
      t.boolean :active
      t.boolean :marketinguser
      t.boolean :offlineuser
      t.boolean :knowledgeuser
      t.boolean :forcecomflowuser
      t.boolean :serviceclouduser
      t.boolean :sitecomcontributoruser
      t.boolean :sitecompublisheruser
      t.boolean :mobileuser

      t.timestamps null: false
    end
  end
end
