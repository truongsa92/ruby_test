require 'test_helper'
require 'capybara/minitest'
require 'capybara/dsl'
require 'capybara/rails'

class Admin::AccountControllerTest < ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL
  # Make `assert_*` methods behave like Minitest assertions
  include Capybara::Minitest::Assertions

  test "test" do
    # it "this is test" do
      visit '/admin/account/create'
      click_button 'List User'
      page.must_have_content('List Account!')
      # expect(page).to have_content 'List Account'
    # end
  end
end
