Before do
  @home_page = Pages::HomePage.new
  @search_page = Pages::SearchPage.new
  @login_page = Pages::LoginPage.new
  @account_page = Pages::AccountPage.new
  @product_page = Pages::ProductPage.new
  @register_page = Pages::RegisterPage.new
  @order_page = Pages::OrderPage.new
end

AfterStep do
  screenshot = "reports/screenshot#{Time.now.to_i.to_s}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'the_screenshot')
end
