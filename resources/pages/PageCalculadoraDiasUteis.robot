*** Variables ***

${LINK_AGI_BLOG}                     xpath=//a[@href='https://blog.agibank.com.br/']
${LINK_CALCULADORA}                  xpath=//a[@href='https://blog.agibank.com.br/calculadora/']
${LINK_CALCULADORA_DIAS_UTEIS}       xpath=//a[@href='https://blog.agibank.com.br/calculadora-dias-uteis/']
${TITULO_CALCULADORA_DIAS_UTEIS}     xpath=//h1[contains(@class,'entry-title') and normalize-space()='Calculadora de Dias Úteis Online e Gratuita']
${CAMPO_DATA_INICIO}                 id=dataInicio
${CAMPO_DATA_FIM}                    id=dataFim
${CAMPO_IFRAME}                      xpath=//iframe[@title='Calculadora de Dias Úteis']
${INCLUIR_SABADO}                    id=incluirSabado
${INCLUIR_DOMINGO}                   id=incluirDomingo
${BOTAO_CALCULAR_AGORA}              xpath=//*[contains(text(),'Calcular Agora')]
${RESULTADO_CALCULO_DIAS_UTEIS}      xpath=//h3[contains(text(),'Resultado do Cálculo')]































