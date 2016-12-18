# encoding: utf-8

module Calculadora
    module Pages
        class CalculaSalarioLiquidoPage < SitePrism::Page
            set_url '/trabalhista/calculo-salario-liquido'
            element :salario_bruto, 'input[class$=salarioBruto]'
            element :botao_calcular, '.btnCalcular'
            element :box_resultado, '.sliderConteudoDestaque'
            elements :tabela_resultado, '.resultado tbody tr'
        end
    end
end