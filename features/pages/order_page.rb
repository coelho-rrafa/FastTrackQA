require_relative 'sections/cart_summary'

module Pages
  class OrderPage < SitePrism::Page
    set_url  '/index.php?controller=order'

    section  :cart_summary, Sections::CartSummary, '#center_column'
  end
end
