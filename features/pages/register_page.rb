require_relative 'sections/create_account'

module Pages
  class RegisterPage < SitePrism::Page
    set_url  '/index.php?controller=authentication&back=my-account#account-creation'

    element  :expected_page, '.page-heading'
    section  :create_account, Sections::AccountForm, '#account-creation_form'

    def fill_informations(name, lastname, password)
      create_account.select_male_gender.click
      create_account.input_customer_firstname.set name
      create_account.input_customer_lastname.set lastname
      create_account.input_create_password.set password
    end

    def set_date_of_birth(day, month, year)
      create_account.select_day_of_birth.select day
      create_account.select_month_of_birth.select month
      create_account.select_year_of_birth.select year
    end

    def set_corporative_informations(name, lastname, company, address, complement)
      create_account.input_corporative_firstname.set name
      create_account.input_corporative_lastname.set lastname
      create_account.input_company.set company
      create_account.input_company_address.set address
      create_account.input_address_complement.set complement
    end

    def set_town_infos(city, state, zip, country)
      create_account.input_city.set city
      create_account.select_state.select state
      create_account.select_country.select country
      create_account.input_postcode.set zip
    end

    def insert_additional_informations(infos, home_phone, mobile_phone, alt_address)
      create_account.input_additional_infos.set infos
      create_account.input_home_phone.set home_phone
      create_account.input_mobile_phone.set mobile_phone
      create_account.input_alt_address.set alt_address
    end
  end
end
