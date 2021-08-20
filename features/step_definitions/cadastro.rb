Dado("que esteja na página do login") do
  @login_page.load
end

Quando("digitar um email válido") do
  @login_page.input_create_account_email.set 'terestetestess@teste.com'
  @login_page.btn_create_an_account.click
end
  
Quando("preencher o formulário") do
  expect(@register_page.expected_page).to have_content 'CREATE AN ACCOUNT'

  @register_page.fill_informations('teste', 'teste', 'teste')
  @register_page.set_date_of_birth('21', 'January', '1991')
  @register_page.set_corporative_informations('teste', 'teste', 'Compasso', 'Rua Teste', 'Teste1')
  @register_page.set_town_infos('Boston', 'Massachusetts', '00000', 'United States')
  @register_page.insert_additional_informations('teste', '000-0000', '000-0000', 'teste')
end

Então("deverá ser cadastrado com sucesso") do
  @register_page.create_account.btn_register.click
  expect(page.title).to have_content 'My account - My Store'
  expect(@account_page.customer_account).to have_content 'teste teste'
end
