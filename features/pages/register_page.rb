module Pages
    class RegisterPage < SitePrism::Page
        set_url  "/index.php?controller=authentication&back=my-account#account-creation"

        element  :expected_page, '.page-heading'
        element  :male_gender, '#uniform-id_gender1'
        element  :female_gender, '#uniform-id_gender2'
        element  :customer_firstname, '#customer_firstname'
        element  :customer_lastname, '#customer_lastname'
        element  :create_password, '#passwd'
        element  :day_of_birth, '#uniform-days'
        element  :month_of_birth, '#uniform-months'
        element  :year_of_birth, '#uniform-years'

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