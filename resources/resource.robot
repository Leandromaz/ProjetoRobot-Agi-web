*** Settings ***
Library        SeleniumLibrary


*** Variables ***
# chrome , headlesschrome
${BROWSER}        headlesschrome
${URL}            https://blog.agibank.com.br/institucional/


*** Keywords ***
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}  

Fechar navegador
    Capture Page Screenshot
    Close Browser
