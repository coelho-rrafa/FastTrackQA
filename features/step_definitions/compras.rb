Quando("selecionar o primeiro item disponível") do
  @home_page.first_item_for_sale.click
end

Quando("adicionar ao meu carrinho") do
  @product_page.btn_add_to_cart.click
  @product_page.btn_close_window.click
end

Então("deverá ser exibido o item adicionado com sucesso") do
  @product_page.btn_my_cart.hover
  item = @product_page.cart_item.visible?
  expect(item).to be true
end


Quando("seguir para página {string}") do |expected_page|
  @product_page.btn_my_cart.click
  expect(page.title).to eql expected_page
end

Quando("remover o produto") do
  @order_page.cart_summary.btn_delete.click
end

Então("deverá exibir a mensagem {string}") do |expected_message|
  expect(@order_page.cart_summary.message_cart_empty).to have_content expected_message
end