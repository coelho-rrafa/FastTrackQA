module Sections
  class AccountForm < SitePrism::Section
    element  :select_male_gender, '#uniform-id_gender1'
    element  :select_female_gender, '#uniform-id_gender2'
    element  :input_customer_firstname, '#customer_firstname'
    element  :input_customer_lastname, '#customer_lastname'
    element  :input_create_password, '#passwd'
    element  :select_day_of_birth, '#uniform-days'
    element  :select_month_of_birth, '#uniform-months'
    element  :select_year_of_birth, '#uniform-years'
    element  :input_corporative_firstname, '#firstname'
    element  :input_corporative_lastname, '#lastname'
    element  :input_company, '#company'
    element  :input_company_address, '#address1'
    element  :input_address_complement, '#address2'
    element  :input_city, '#city'
    element  :select_state, '#uniform-id_state'
    element  :input_postcode, '#postcode'
    element  :select_country, '#uniform-id_country'
    element  :input_additional_infos, '#other'
    element  :input_home_phone, '#phone'
    element  :input_mobile_phone, '#phone_mobile'
    element  :input_alt_address, '#address_alias'
    element  :btn_register, '#submitAccount'
  end
end
