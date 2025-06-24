*** Settings ***
Resource  ../resources/main.resource
Test Setup  Abrir o navegador
Test Teardown  Fechar o navegador

*** Test Cases ***

Successfully Fill Out Form
    [Documentation]  Successfully Fill Out Form
    [Tags]  form  
    Criar dados do usuário
    Criar sugestions
    Input Text    ${imput_name}   ${NOME_RAMDOM}
    Input Text    ${imput_surname}    ${NOME_RAMDOM}
    Click Element   ${imput_sex} 
    Click Element    ${imput_food}
    Select From List By Index 	 ${index_escolaridade}    2
    Select From List By Label    ${index_spots}    Corrida
    Input Text    ${sugestions}   ${SUGESTIONS_RAMDOM}
    Click Button    ${button_register}
    Page Should Contain    Cadastrado!
    
validate user table
    [Documentation]  validate user table
    [Tags]  usertable  
    Criar dados do usuário 
    Page Should Contain    Francisco
    Page Should Contain    Superior
    Click Button     ${button_click_here}
    Handle Alert 
    Click Element    ${checkbox} 
    Click Element    ${radio}
    Input Text       ${text}   ${NOME_RAMDOM} 
    # Maria
    Page Should Contain    Maria
    Page Should Contain    Doutorado
    Click Button     ${button_click_here}
    Handle Alert 
    Click Element    ${checkbox} 
    Click Element    ${radio}
    Input Text       ${text}   ${NOME_RAMDOM}
    #Usuario A
    Page Should Contain    Usuario A
    Page Should Contain    Mestrado
    Click Button     ${button_click_here}
    Handle Alert 
    Click Element    ${checkbox} 
    Click Element    ${radio}
    Input Text       ${text}   ${NOME_RAMDOM}
    #Doutorado
    Page Should Contain    Doutorado
    Page Should Contain    Doutorado
    Click Button     ${button_click_here}
    Handle Alert 
    Click Element    ${checkbox} 
    Click Element    ${radio}
    Input Text       ${text}   ${NOME_RAMDOM}
    #Usuario B
    Page Should Contain    Usuario B
    Page Should Contain    Superior
    Click Button     ${button_click_here}
    Handle Alert 
    Click Element    ${checkbox} 
    Click Element    ${radio}
    Input Text       ${text}   ${NOME_RAMDOM}

Validate button Alert
    [Documentation]  Validate button Alert, Confirm, Prompt
    [Tags]  buttonAlert 
    Click Button     ${button_alert}
    ${msg}=    Handle Alert
    Should Be Equal    ${msg}    Alert Simples

Validate button Confirm
    [Documentation]  Validate button Confirm
    [Tags]  buttonConfirm 
    Click Button     ${button_confirm}
    ${msg}=    Handle Alert
    Should Be Equal    ${msg}    Confirm Simples
    ${msg}=    Handle Alert
    Should Be Equal    ${msg}    Confirmado

Validate button Prompt
    [Documentation]  Validate button Prompt
    [Tags]  buttonPrompt
    Click Button     ${button_prompt}
    Input Text Into Alert    42
    ${texto}=    Handle Alert
    Should Be Equal     ${texto}    Era 42?
    ${final_alert}=    Handle Alert
    Should Be Equal    ${final_alert}    :D

Validate button click me!
    [Documentation]  Validate button click me!
    [Tags]  buttonClickme 

    Element Attribute Value Should Be    ${button_Simple}     value    Clique Me!
    Click Button    ${button_Simple} 
    Wait Until Element Is Visible 	${button_Simple} 	timeout=10s
    Element Attribute Value Should Be    ${button_Simple}    value    Obrigado!

Validate button Lazy
    [Documentation]  Validate button Lazy
    [Tags]  buttonLazy 
    Element Attribute Value Should Be    ${button_Lazy}     value    Clique ZzZ!
    Click Button    ${button_Lazy}
    Sleep  5s
    Wait Until Element Is Visible 	${button_Lazy}  	timeout=10s
    Element Attribute Value Should Be    ${button_Lazy}    value     zZz ZzZ!

Validate button Count
    [Documentation]  Validate button Count
    [Tags]  buttonCount
    Element Attribute Value Should Be    ${button_count}     value    1
    Click Button    ${button_count}
    Sleep  2s
    Wait Until Element Is Visible 	${button_count} 	timeout=10s
    Element Attribute Value Should Be     ${button_count}   value     11

Validate button List
    [Documentation]  Validate button list
    [Tags]  buttonList
    Click Button    ${button_List} 
    Wait Until Element Is Visible 	${list} 	timeout=10s
    Page Should Contain    Item 1

Validate button delayed response
    [Documentation]  Validate button delayed response
    [Tags]  buttonDelay
    Criar dados do usuário
    Click Button    ${button_Delay}
    Sleep  2s
    Wait Until Element Is Visible 	 ${input_novoCampo}  	timeout=10s
    Input Text       ${input_novoCampo}   ${NOME_RAMDOM}

Validate button right time
   [Documentation]  Validate button right time
   [Tags]  buttonHour
   Click Button    ${button_hour}
   Sleep  2s
   Wait Until Element Is Visible 	 	  ${hour}  	timeout=10s
   Element Should Be Visible     ${hour}

Validate button running time
   [Documentation]  Validate button running time
   [Tags]  buttonTime
   Click Button    ${button_timepassed}
   Wait Until Element Is Visible 	 ${hour}  	timeout=10s 
   Element Should Be Visible    ${hour} 

Validate button Popup
    [Documentation]  Validate button Popup
    [Tags]  buttonPopup
   
    ${janela_principal}=    Get Window Handles

    Click Button    ${button_popup}
    Nova Janela Deve Existir
    Wait Until Keyword Succeeds    5x    1s    Nova Janela Deve Existir

    ${janelas}=    Get Window Handles
    ${popup}=    Set Variable    ${janelas}[-1]
    Switch Window    ${popup}

    Input Text    ${imput_popup}     12345
    Click Button    ${button_otherButton} 
    ${alert}=    Handle Alert
    Should Be Equal    ${alert}    Click OK!

    
    Close Window
    Switch Window    ${janela_principal}[0]

  


















    
    
