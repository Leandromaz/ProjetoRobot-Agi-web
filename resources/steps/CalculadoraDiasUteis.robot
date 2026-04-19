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
   
            
Entao mostre o resultado do calculo de dias úteis       
       Wait Until Element Is Visible    ${RESULTADO_CALCULO_DIAS_UTEIS}    5s
       Page Should Contain Element  ${RESULTADO_CALCULO_DIAS_UTEIS}     
    