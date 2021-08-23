# language: pt

Funcionalidade: Adicionar item ao carrinho no Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria de adicionar um produto ao meu carrinho
  Para que possa concluir a compra posteriormente

    Contexto:
        Dado que esteja na página inicial
    
    @adicionar_item
    Cenário: Adicionar item ao carrinho de compras
        Quando selecionar o primeiro item disponível
        E adicionar ao meu carrinho
        Então deverá ser exibido o item adicionado com sucesso


    @remover_item
    Cenário: Remover produto do carrinho
      Quando selecionar o primeiro item disponível
      E adicionar ao meu carrinho
      E seguir para página "Order - My Store"
      E remover o produto
      Então deverá exibir a mensagem "Your shopping cart is empty."