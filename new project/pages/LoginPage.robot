*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${form auth }  xpath://*[@id="content"]/ul/li[21]/a
${username}        id:username
${password}   id:password 
${login btn }  xpath://*[@id="login"]/button
${message}    id:flash

*** Keywords ***
  
    
invalid login 
    [Arguments]    ${name}  ${pass}
    Click Element    ${form auth }    
    Input Text    ${username}    ${name}  
    sleep  3s 
    Input Password    ${password}    ${pass}   
    sleep  3s 
    Click Button    ${login btn }  
    sleep   3s 
    