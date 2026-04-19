*** Settings ***

Resource    ../pages/PageCalculadoraJurosCompostos.robot
Resource    ../steps/generic.robot
Library   SeleniumLibrary


*** Keywords ***

E eu clico no link Calculadora Juros Compostos
       Mouse Over na menu e clica na opção desejada     ${LINK_CALCULADORA}     ${LINK_CALCULADORA_JUROS_COMPOSTOS}  
       Page Should Contain Element  ${TITULO_CALCULADORA_JUROS_COMPOSTOS}     3s
       
E preenchoo os campos necessários para calcular a divida de juros compostos
      [Arguments]   ${valor_emprestimo}      ${taxa_juros}   ${periodo_taxa_juros}=mensal  ${prazo_divida}=24  ${tipo_prazo_divida}=meses
      Scroll com iframe    ${CAMPO_IFRAME_JUROS_COMPOSTOS}    ${CAMPO_DIVIDA}
      Wait Until Element Is Visible    ${CAMPO_DIVIDA}    
      Click Element    ${CAMPO_DIVIDA}
      Wait Until Element Is Visible    ${CAMPO_VALOR_EMPRESTIMO}
      Input Text    ${CAMPO_VALOR_EMPRESTIMO}    ${valor_emprestimo}
      Wait Until Element Is Visible    ${CAMPO_TAXA_JUROS}
      Input Text    ${CAMPO_TAXA_JUROS}    ${taxa_juros}
              IF  '${periodo_taxa_juros}' == 'MENSAL' or '${periodo_taxa_juros}' == 'mensal' or '${periodo_taxa_juros}' == 'Mensal'
                     Click Element    ${SELECT_TIPO_TAXA_DIVIDA}
                     Click Element    ${OPCAO_MENSAL}
              ELSE
                     Click Element    ${SELECT_TIPO_TAXA_DIVIDA}
                     Click Element    ${OPCAO_ANUAL}
              END
      Wait Until Element Is Visible    ${CAMPO_PRAZO_DIVIDA}
      Input Text    ${CAMPO_PRAZO_DIVIDA}    ${prazo_divida}
        IF  '${tipo_prazo_divida}' == 'meses' or '${periodo_taxa_juros}' == 'Meses' or '${periodo_taxa_juros}' == 'MESES'
                     Click Element    ${SELECT_TIPO_PRAZO_DIVIDA}
                     Click Element    ${OPCAO_TIPO_PRAZO_MESES}
              ELSE
                     Click Element    ${SELECT_TIPO_PRAZO_DIVIDA}

                     Click Element    ${OPCAO_TIPO_PRAZO_ANOS}
              END

Entao mostre o resultado do calculo de divida
       Wait Until Element Is Visible    ${RESULTADO_CALCULO_DIVIDA}    5s
       Page Should Contain Element  ${RESULTADO_CALCULO_DIVIDA}     