module Sections
  class Header < SitePrism::Section
    element  :logo, '.logo'
    element  :input_search_form, '#search_query_top'
    element  :btn_search, '.button-search'
    element  :btn_go_to_sign_in, '.login'
    element  :btn_shopping_cart, 'a[title*=shopping'
    element  :btn_contact_us, 'a[title="Contact Us"]'
    element  :btn_section_women, 'a[title=Women'
    element  :btn_section_dresses, 'a[title=Dresses'
    element  :btn_section_tshirts, 'a[title=T-shirts'
  end
end