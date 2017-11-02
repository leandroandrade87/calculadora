# encoding: utf-8

module Login
    module Pages
        class LoginPage < SitePrism::Page
            set_url '/'
            element :txtUsuario, 'input[id=j_username]'
            element :txtSenha, 'input[id=j_password]'
            element :btLogin, 'input[class$=ui-button]'
        
            def log_in(username, password)
                txtUsuario.set(username)
                txtSenha.set(password)
                btLogin.click
            end
        end
    end
end