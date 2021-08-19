module Pages
  class HomePage < SitePrism::Page
    set_url '/index.php'

    element  :logo, '.logo'
    element  :btn_contact_us, 'a[title="Contact Us"]'
    element  :btn_go_to_sign_in, '.login'
    element  :input_search_form, '#search_query_top'
    element  :button_search, '.button-search'
    element  :input_newsletter_footer_email, '#newsletter-input'
    element  :btn_newsletter_footer_register, 'button[name=submitNewsletter]'
    element  :no_results_message, '.alert-warning'
    element  :first_item_for_sale, 'img[title="Faded Short Sleeve T-shirts"]'

    def search(query)
      input_search_form.set(query)
      button_search.click
    end
  end
end
