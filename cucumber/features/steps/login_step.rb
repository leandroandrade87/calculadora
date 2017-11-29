# encoding: utf-8

Dado(/^Usuario acessa a pagina login$/) do
 visit 'http://trem.cit:8101/administracao'
end

Quando(/^Preenche dados login$/) do
  fill_in 'j_username', :with => "WEBLOGIC"
  fill_in 'j_password', :with => "system32"
  click_button('Login')
end