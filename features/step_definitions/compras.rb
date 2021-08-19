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