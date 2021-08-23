module Sections
  class CartSummary < SitePrism::Section
    element  :item_on_cart, '#product_1_1_0_0'
    element  :message_cart_empty, '.alert-warning'
    element  :btn_delete, 'a[title=Delete]'
  end
end
