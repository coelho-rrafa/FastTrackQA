Dado("que esteja na página de login") do
    @login_page.load
end
  
Quando("fizer login com {string} e {string}") do |user_email, password|
   @login_page.input_login_email.set user_email
   @login_page.input_login_password.set password
   @login_page.btn_sign_in.click
end
  
Então("deverá ser redirecionado para área logada") do
    expect(@account_page.breadcrumb).to have_content "My account"
end
  
Então("deverá ser exibido o nome {string}") do |user_name|
    expect(@account_page.customer_account).to have_content user_name
end

Então("não deverá ser autenticado") do
    expect(@login_page.breadcrumb).to have_content "Authentication"
end
  
Então("deverá exibir a mensagem de alerta {string}") do |message|
    expect(@login_page.alert_message_authentication_failed).to have_content message
end