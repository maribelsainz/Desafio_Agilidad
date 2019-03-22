require "application_system_test_case"

class BoughtProductsTest < ApplicationSystemTestCase
  setup do
    @bought_product = bought_products(:one)
  end

  test "visiting the index" do
    visit bought_products_url
    assert_selector "h1", text: "Bought Products"
  end

  test "creating a Bought product" do
    visit bought_products_url
    click_on "New Bought Product"

    fill_in "Product", with: @bought_product.product_id
    fill_in "User", with: @bought_product.user_id
    click_on "Create Bought product"

    assert_text "Bought product was successfully created"
    click_on "Back"
  end

  test "updating a Bought product" do
    visit bought_products_url
    click_on "Edit", match: :first

    fill_in "Product", with: @bought_product.product_id
    fill_in "User", with: @bought_product.user_id
    click_on "Update Bought product"

    assert_text "Bought product was successfully updated"
    click_on "Back"
  end

  test "destroying a Bought product" do
    visit bought_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bought product was successfully destroyed"
  end
end
