# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria de efetuar login com dados previamente cadastrados
  Para que possa efetuar compras dos produtos que desejo

  Contexto:
    Dado que esteja na página de login

  # Completar o cenário abaixo
  @login_com_sucesso
  Cenário: Realizar login
    Quando fizer login com "rafael@coelho.com" e "abc123"
    Então deverá ser redirecionado para área logada
    E deverá ser exibido o nome "Rafael Coelho"

  # Completar o cenário abaixo
  @login_sem_sucesso
  Esquema do Cenário: Login com falha
    Quando fizer login com <email> e <senha>
    Então não deverá ser autenticado
    E deverá exibir a mensagem de alerta <texto>

    Exemplos:
    | email                 | senha             | texto                          |
    | "404@gmail.com"       | "abc123"          | "Authentication failed."       |
    | "rafael@coelho.com"   | "pwd123"          | "Authentication failed."       |
    | ""                    | "abc123"          | "An email address required."   |
    | "rafael@coelho.com"   | ""                | "Password is required."        |
