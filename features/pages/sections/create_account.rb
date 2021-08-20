module Sections
    class AccountForm < SitePrism::Section
        element  :expected_page, '.page-heading'
        element  :male_gender, '#uniform-id_gender1'
        element  :female_gender, '#uniform-id_gender2'
        element  :customer_firstname, '#customer_firstname'
        element  :customer_lastname, '#customer_lastname'
        element  :create_password, '#passwd'
        element  :day_of_birth, '#uniform-days'
        element  :month_of_birth, '#uniform-months'
        element  :year_of_birth, '#uniform-years'
        element  :address_firstname, '#firstname'
        element  :address_lastname, '#lastname'
        element  :company, '#company'
        element  :address_company, '#address1'
    end
end