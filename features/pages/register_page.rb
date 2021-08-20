module Pages
    class RegisterPage < SitePrism::Page
        set_url  "/index.php?controller=authentication&back=my-account#account-creation"

        section  :create_account, Sections::AccountForm, '#account-creation_form'

        def personal_informations(name, lastname, password)
            customer_firstname.set name
            customer_lastname.set lastname
            create_password.set password
        end
        
        def date_of_birth(day, month, year)
            day_of_birth.select day
            month_of_birth.select month
            year_of_birth.select year
        end
    end
end