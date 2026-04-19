*** Settings ***

Resource    ../pages/PageCalculadoraDiasUteis.robot
Library    SeleniumLibrary
Library    String

*** Keywords ***
Dado que eu estou na pagina inicial do blog
       Wait until element is visible    ${NOME_HOME}  3s   
       Click Element    ${LINK_AGI_BLOG}
       

Scroll com iframe
    [Arguments]   ${elemnto_iframe}    ${elemento_visivel}
    Select Frame    ${elemnto_iframe}     
    Scroll Element Into View         ${elemento_visivel} 
    Wait until element is visible    ${elemento_visivel}   


Quando eu clicar no botao calcular
    Click Button  ${BOTAO_CALCULAR_AGORA}
   
Mouse Over na menu e clica na opção desejada
       [Arguments]   ${elemento_mouse_over}     ${elemento_desejado}
       Wait until element is visible   ${elemento_mouse_over}
       Mouse Over    ${elemento_mouse_over}    
       Click Element    ${elemento_desejado}      