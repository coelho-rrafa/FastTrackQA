require_relative 'sections/header'

module Pages
  class AccountPage < SitePrism::Page
    set_url  '/index.php?controller=my-account'

    element  :breadcrumb, '.breadcrumb'
    section  :header, Sections::Header, '#header'
  end
end
