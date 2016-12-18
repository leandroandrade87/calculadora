# encoding: utf-8

Dado(/^que acesso a página Salário$/) do
  @salario_page = Calculadora::Pages::CalculaSalarioLiquidoPage.new
  @salario_page.load
end

Dado(/^que meu salário bruto é "([^"]*)"$/) do |salario|
  @salario_bruto = salario
end

Quando(/^eu faço o calculo do meu salário$/) do
  #find('input[class$=salarioBruto]').set @salario_bruto
  @salario_page.salario_bruto.set @salario_bruto
  @salario_page.botao_calcular.click
  sleep(5)
end

Entao(/^vejo o meu salário liquido no valor de "([^"]*)"$/) do |salario_liquido|
  resultado = @salario_page.box_resultado.text
  resultado.should have_content salario_liquido
  @salario_page.tabela_resultado[5].text.should have_content salario_liquido
end

Entao(/^o imposto de IR no valor de "([^"]*)"$/) do |imposto|
    @salario_page.tabela_resultado.each do |tr|
        tr.all('td').each do |td|
            tr.should have_content imposto if td.text == 'IRRF' 
        end
    end
end
