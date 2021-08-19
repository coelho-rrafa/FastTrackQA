module Pages
    class AccountPage < SitePrism::Page
        set_url  '/index.php?controller=my-account'

        element  :breadcrumb, '.breadcrumb'
        element  :customer_account, '.account'
    end
end