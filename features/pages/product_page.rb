module Pages
  class ProductPage < SitePrism::Page
    set_url '/index.php?id_product=1&controller=product'

    element  :btn_add_to_cart, '#add_to_cart'
    element  :btn_close_window, '.cross'
    element  :btn_my_cart, 'a[title*=shopping'
    element  :cart_item, 'dt[data-id=cart_block_product_1_1_0'
  end
end