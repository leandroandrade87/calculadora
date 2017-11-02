# encoding: utf-8

Dado(/^Usuario acessa a pagina login$/) do
  @login_page = Login::Pages::LoginPage.new
  @login_page.load
end

Quando(/^Preenche dados login$/) do
  #@login_page.log_in('WEBLOGIC','system32')
  fill_in 'j_username', :with => "WEBLOGIC"
  fill_in 'j_password', :with => "system32"
  click_button 'Entrar'


end