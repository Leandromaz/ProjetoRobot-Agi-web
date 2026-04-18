*** Settings ***
Resource           ../settings/settings.robot
Test Setup         Abrir navegador
Test Teardown      Fechar navegador

*** Test Cases ***
# robot -d ./logs -i [tag] tests
Caso de testes 01: Calcular dias úteis
        [tags]    calculadora_dias_uteis
    Dado que eu estou na pagina inicial do blog
    E eu clico no link Calculadora dias úteis
    E prechoo os campos necessários para calcular os dias úteis    01/03/2026    18/04/2026   sim
    Quando eu clicar no botao calcular

    