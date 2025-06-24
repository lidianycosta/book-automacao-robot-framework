*** Settings ***
Documentation   Arquivo de localização das variáveis de ambiente

*** Variables ***

# URLs:
${URL}          https://www.wcaquino.me/cypress/componentes.html

# Browser Options 
${chrome}                  chrome
${firefox}                 firefox

#Elements
${imput_name}                    id=formNome
${imput_surname}                 id=formSobrenome
${imput_sex}                     id=formSexoFem
${imput_food}                    id=formComidaPizza
${index_escolaridade}            id=formEscolaridade
${index_spots}                   id=formEsportes 
${button_register}               id=formCadastrar
${sugestions}                    id=elementosForm:sugestoes
${button_click_here}             xpath=//input[@value="Clique aqui"]
${table_users}                    xpath=//table[@id='tabelaUsuarios']/tbody/tr
${checkbox}                       xpath=//input[@type="checkbox"]
${radio}                          xpath=//input[@type="radio"]
${text}                           xpath=//input[@type="text"] 
${button_alert}                   id=alert
${button_confirm}                 id=confirm
${button_prompt}                  id=prompt
${button_otherButton}             id=otherButton
${button_Simple}                  id=buttonSimple
${button_Lazy}                    id=buttonLazy
${button_List}                    id=buttonList
${button_Delay}                   id=buttonDelay
${button_hour}                    id=buttonNow
${hour}                           id=resultado
${button_timepassed}              id=buttonTimePassed
${input_novoCampo}                id=novoCampo
${button_popup}                  id=buttonPopUp
${imput_popup}                   id=tfield
${list}                          id=lista
${button_count}                  id=buttonCount