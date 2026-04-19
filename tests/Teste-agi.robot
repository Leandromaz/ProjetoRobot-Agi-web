*** Settings ***
Resource           ../settings/settings.robot
Test Setup         Abrir navegador
Test Teardown      Fechar navegador

*** Test Cases ***
# robot -d ./logs -i calculadora_dias_uteis tests
Caso de testes 01: Calcular dias úteis
        [tags]    calculadora_dias_uteis
    Dado que eu estou na pagina inicial do blog
    E eu clico no link Calculadora dias úteis
    E prechoo os campos necessários para calcular os dias úteis    01/03/2026    18/04/2026   nao
    Quando eu clicar no botao calcular
    Entao mostre o resultado do calculo de dias úteis
  
# robot -d ./logs -i calculadora_divida tests  
Caso de testes 02: Calcular divida de juros Compostos
        [tags]    calculadora_divida
    Dado que eu estou na pagina inicial do blog
    E eu clico no link Calculadora Juros Compostos
    E preenchoo os campos necessários para calcular a divida de juros compostos   10000  2,50  Anual  36  Anos
    Quando eu clicar no botao calcular




    