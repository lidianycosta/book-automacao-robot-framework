*** Settings ***
Library  SeleniumLibrary
Library  String

Resource  variables.resource 

*** Keywords ***
Abrir o navegador
  Open Browser  browser=headlesschrome
  Maximize Browser Window
  Go To    url=${URL}

Fechar o navegador
  Close Browser

Criar dados do usuário
  ${palavra_randomica}  Generate Random String  length=5  chars=[LETTERS]
  ${palavra_randomica}  Convert To Lower Case   ${palavra_randomica}
  
  Set Test Variable     ${NOME_RAMDOM}           T${palavra_randomica} 

Criar sugestions
  ${palavra_randomica}  Generate Random String  length=20  chars=[LETTERS]
  ${palavra_randomica}  Convert To Lower Case   ${palavra_randomica}
  
  Set Test Variable     ${SUGESTIONS_RAMDOM}       ${palavra_randomica} 

Nova Janela Deve Existir
    ${janelas}=    Get Window Handles
    ${quantidade}=    Get Length    ${janelas}
    Should Be True    ${quantidade} > 1