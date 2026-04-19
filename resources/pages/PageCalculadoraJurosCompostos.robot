*** Variables ***

${LINK_CALCULADORA_JUROS_COMPOSTOS}              xpath=//a[@href='https://blog.agibank.com.br/como-calcular-juros-compostos/']
${TITULO_CALCULADORA_JUROS_COMPOSTOS}            xpath=//h1[contains(text(),'Calculadora de Juros Compostos Online e Gratuita')]
${CAMPO_IFRAME_JUROS_COMPOSTOS}                  xpath=//iframe[@title='Calculadora de Juros Compostos']
${CAMPO_DIVIDA}                                  xpath=//div[normalize-space()='Dívida']
${TITULO_CALCULADORA_DIVIDA}                     xpath=//h3[text()='Calculadora de Dívida']
${CAMPO_VALOR_EMPRESTIMO}                        id=valorEmprestimo    
${CAMPO_TAXA_JUROS}                              id=taxaJurosDivida
${SELECT_TIPO_TAXA_DIVIDA}                       id=tipoTaxaDivida
${OPCAO_MENSAL}                                  xpath=//option[normalize-space()='Mensal']
${OPCAO_ANUAL}                                   xpath=//option[normalize-space()='Anual']
${CAMPO_PRAZO_DIVIDA}                            id=prazoDivida
${SELECT_TIPO_PRAZO_DIVIDA}                       id=tipoPrazoDivida
${OPCAO_TIPO_PRAZO_MESES}                        xpath=//option[normalize-space()='Meses']
${OPCAO_TIPO_PRAZO_ANOS}                         xpath=//option[normalize-space()='Anos']
${RESULTADO_CALCULO_DIVIDA}                      id=valorTotal

























