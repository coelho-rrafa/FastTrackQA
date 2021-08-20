# language: pt

Funcionalidade: Criar conta no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria criar uma conta
  Para salvar meus dados

  Contexto:
    Dado que esteja na página do login

  @criar_conta
  Cenário: Criar conta
    Quando digitar um email válido
    E preencher o formulário
    Então deverá ser cadastrado com sucesso
    