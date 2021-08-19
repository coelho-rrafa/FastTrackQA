Dado("que esteja na página do login") do
    @login_page.load
  end
  
  Quando("digita um email válido") do
    @login_page.input_create_account_email.set 'coelho.rrafa@gmail.com'
    @login_page.btn_create_an_account.click
  end
  
  Quando("é redirecionado para a criação de conta") do
    expect(@register_page.expected_page).to have_content "CREATE AN ACCOUNT"
  end
  
  Então("preenche o formulário e envia") do
    @register_page.male_gender.click
    @register_page.personal_informations('teste', 'teste', 'teste')
    @register_page.date_of_birth("21", "January", "1991")
  end