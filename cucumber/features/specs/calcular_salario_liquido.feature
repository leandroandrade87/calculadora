# language: pt

@calc2
Funcionalidade: Calcular Salario Liquido
    Sendo um usuário do sistema calculadora
    Posso calcular meu Salário Liquido a partir do Bruto
    Para que eu possa saber quanto irei receber no final do mes

    Contexto: Acessar calculadora de salário liquido
        Dado que acesso a página Salário

    Esquema do Cenario: Calcular salario liquido
        Dado que eu tenho o valor do <salario_bruto>
        Quando eu faço o calculo de salário
        Entao vejo o calculo do <salario_liquido>
        E o valor do <imposto>

    Exemplos:
        | salario_bruto | salario_liquido | imposto     |
        | "1.000,00"    | "920,00"        | "0,00"      |
        | "10.000,00"   | "7.705,47"      | "1.723,65"  |
        | "45.000,00"   | "33.080,47"     | "11.348,65" |
