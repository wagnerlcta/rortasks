require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { activationinformation: @product.activationinformation, activefrom: @product.activefrom, activeto: @product.activeto, allowgiftmessage: @product.allowgiftmessage, applymap: @product.applymap, backorders: @product.backorders, code: @product.code, color: @product.color, cost: @product.cost, countryofmanufacture: @product.countryofmanufacture, customdesign: @product.customdesign, customlayoutupdate: @product.customlayoutupdate, description: @product.description, dimensions: @product.dimensions, displayactualprice: @product.displayactualprice, displayproductoptionsin: @product.displayproductoptionsin, enableqtyincrements: @product.enableqtyincrements, enablerecurringprofile: @product.enablerecurringprofile, indepth: @product.indepth, managestock: @product.managestock, manufacturer: @product.manufacturer, maximumqtyallowedinshoppingcart: @product.maximumqtyallowedinshoppingcart, metadescription: @product.metadescription, metakeywords: @product.metakeywords, metatitle: @product.metatitle, minimumqtyallowedinshoppingcart: @product.minimumqtyallowedinshoppingcart, model: @product.model, name: @product.name, notifyforquantitybelow: @product.notifyforquantitybelow, pagelayout: @product.pagelayout, price: @product.price, qty: @product.qty, qtyforitemsstatustobecomeoutofstock: @product.qtyforitemsstatustobecomeoutofstock, qtyusesdecimals: @product.qtyusesdecimals, setproductasnewfromdate: @product.setproductasnewfromdate, setproductasnewtodate: @product.setproductasnewtodate, shortdescription: @product.shortdescription, sku: @product.sku, specialprice: @product.specialprice, specialpricefromdate: @product.specialpricefromdate, specialpricetodate: @product.specialpricetodate, status: @product.status, stockavailability: @product.stockavailability, suggestedretailprice: @product.suggestedretailprice, tags: @product.tags, taxclass: @product.taxclass, urlkey: @product.urlkey, visibility: @product.visibility, weight: @product.weight }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { activationinformation: @product.activationinformation, activefrom: @product.activefrom, activeto: @product.activeto, allowgiftmessage: @product.allowgiftmessage, applymap: @product.applymap, backorders: @product.backorders, code: @product.code, color: @product.color, cost: @product.cost, countryofmanufacture: @product.countryofmanufacture, customdesign: @product.customdesign, customlayoutupdate: @product.customlayoutupdate, description: @product.description, dimensions: @product.dimensions, displayactualprice: @product.displayactualprice, displayproductoptionsin: @product.displayproductoptionsin, enableqtyincrements: @product.enableqtyincrements, enablerecurringprofile: @product.enablerecurringprofile, indepth: @product.indepth, managestock: @product.managestock, manufacturer: @product.manufacturer, maximumqtyallowedinshoppingcart: @product.maximumqtyallowedinshoppingcart, metadescription: @product.metadescription, metakeywords: @product.metakeywords, metatitle: @product.metatitle, minimumqtyallowedinshoppingcart: @product.minimumqtyallowedinshoppingcart, model: @product.model, name: @product.name, notifyforquantitybelow: @product.notifyforquantitybelow, pagelayout: @product.pagelayout, price: @product.price, qty: @product.qty, qtyforitemsstatustobecomeoutofstock: @product.qtyforitemsstatustobecomeoutofstock, qtyusesdecimals: @product.qtyusesdecimals, setproductasnewfromdate: @product.setproductasnewfromdate, setproductasnewtodate: @product.setproductasnewtodate, shortdescription: @product.shortdescription, sku: @product.sku, specialprice: @product.specialprice, specialpricefromdate: @product.specialpricefromdate, specialpricetodate: @product.specialpricetodate, status: @product.status, stockavailability: @product.stockavailability, suggestedretailprice: @product.suggestedretailprice, tags: @product.tags, taxclass: @product.taxclass, urlkey: @product.urlkey, visibility: @product.visibility, weight: @product.weight }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
