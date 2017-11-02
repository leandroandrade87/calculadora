# encoding: utf-8

Dado(/^Usuario acessa a pagina login$/) do
 visit 'http://trem.cit:8101'
end

Quando(/^Preenche dados login$/) do
  #@login_page.log_in('WEBLOGIC','system32')
  fill_in 'j_username', :with => "WEBLOGIC"
  fill_in 'j_password', :with => "system32"
  click_button 'Entrar'


end