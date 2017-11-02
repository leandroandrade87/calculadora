# encoding: utf-8

Dado(/^Usuario acessa a pagina \"([^\"]*)\"$/) do
  @salario_page = Login::Pages::LoginPage.new
  @salario_page.load
end

