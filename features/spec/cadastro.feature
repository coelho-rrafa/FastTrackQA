# language: pt

Funcionalidade: Criar conta no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria criar uma conta
  Para salvar meus dados

  Contexto:
    Dado que esteja na página do login

  @criar_conta
  Cenário: Criar conta
    Quando digita um email válido
    E é redirecionado para a criação de conta
    Então preenche o formulário e envia