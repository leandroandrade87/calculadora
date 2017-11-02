# encoding: utf-8

module Login
    module Pages
        class LoginPage < SitePrism::Page
            set_url '/'
            element :txtUsuario, 'input[id=j_username]'
            element :txtSenha, 'input[id=j_password]'
            element :txtSenha, 'input[class$=ui-button]'
        end
    end
end