*** Settings ***

Resource    ../pages/PageCalculadoraDiasUteis.robot
Resource    ../steps/generic.robot
Library    SeleniumLibrary
Library    String

*** Keywords ***

E eu clico no link Calculadora dias úteis
       Mouse Over na menu e clica na opção desejada     ${LINK_CALCULADORA}     ${LINK_CALCULADORA_DIAS_UTEIS}
       Page Should Contain Element  ${TITULO_CALCULADORA_DIAS_UTEIS}     3s
       
E prechoo os campos necessários para calcular os dias úteis 
      [Arguments]   ${data_inicio}    ${data_fim}    ${incluir_final_de_semana}=nao
      Scroll com iframe    ${CAMPO_IFRAME}    ${CAMPO_DATA_INICIO}
      Input Text    ${CAMPO_DATA_INICIO}    ${data_inicio}
      Input Text    ${CAMPO_DATA_FIM}      ${data_fim}
      IF  '${incluir_final_de_semana}' == 'sim' or '${incluir_final_de_semana}' == 'SIM' or '${incluir_final_de_semana}' == 'Sim'
        Click Element    ${INCLUIR_SABADO}
        Click Element    ${INCLUIR_DOMINGO}
    END
    sleep  15s
            
      
       
          
         # Preencher os campos necessários para calcular os dias úteis
         # Exemplo:
         # Input Text    ${CAMPO_DATA_INICIAL}    01/01/2024
         # Input Text    ${CAMPO_DATA_FINAL}      31/01/2024
         # Click Button  ${BOTAO_CALCULAR}       