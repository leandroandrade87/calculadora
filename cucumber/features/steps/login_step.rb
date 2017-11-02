# encoding: utf-8

Dado(/^Usuario acessa a pagina \"([^\"]*)\"$/) do
  @login_page = Login::Pages::LoginPage.new
  @login_page.load
end

Quando(/^Preenche dados login$/) do
  @login_page.log_in('WEBLOGIC','system32')
end