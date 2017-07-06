class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :model
      t.string :sku
      t.float :weight
      t.string :manufacturer
      t.string :status
      t.string :taxclass
      t.string :urlkey
      t.string :visibility
      t.date :setproductasnewfromdate
      t.date :setproductasnewtodate
      t.string :countryofmanufacture
      t.float :price
      t.float :cost
      t.float :specialprice
      t.date :specialpricefromdate
      t.date :specialpricetodate
      t.string :applymap
      t.float :displayactualprice
      t.float :suggestedretailprice
      t.string :metatitle
      t.string :metakeywords
      t.string :metadescription
      t.string :shortdescription
      t.string :description
      t.string :indepth
      t.string :dimensions
      t.string :activationinformation
      t.string :color
      t.string :customdesign
      t.date :activefrom
      t.date :activeto
      t.string :customlayoutupdate
      t.string :displayproductoptionsin
      t.string :pagelayout
      t.boolean :enablerecurringprofile
      t.boolean :allowgiftmessage
      t.boolean :managestock
      t.float :qty
      t.float :qtyforitemsstatustobecomeoutofstock
      t.float :minimumqtyallowedinshoppingcart
      t.float :maximumqtyallowedinshoppingcart
      t.boolean :qtyusesdecimals
      t.string :backorders
      t.float :notifyforquantitybelow
      t.boolean :enableqtyincrements
      t.boolean :stockavailability
      t.string :tags

      t.timestamps null: false
    end
  end
end
