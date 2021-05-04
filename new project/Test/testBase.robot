*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${URL}   https://the-internet.herokuapp.com/
${Driver}     chrome 

*** Keywords ***
 startdriver 
    Open Browser    ${URL}    ${Driver} 
    Maximize Browser Window
    
closedriver 
    SeleniumLibrary.Close Browser