require_relative 'sections/header'

module Pages
  class HomePage < SitePrism::Page
    set_url '/index.php'

    section  :header, Sections::Header, '#header'

    element  :input_newsletter_footer_email, '#newsletter-input'
    element  :btn_newsletter_footer_register, 'button[name=submitNewsletter]'
    element  :no_results_message, '.alert-warning'
    element  :first_item_for_sale, 'img[title="Faded Short Sleeve T-shirts"]'

    def search(query)
      header.input_search_form.set(query)
      header.button_search.click
    end
  end
end