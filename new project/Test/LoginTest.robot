*** Settings ***
Library    SeleniumLibrary    
Resource    testBase.robot
Resource    ../pages/LoginPage.robot
Library     DataDriver     ../TestData/TestData.xlsx     sheet_name=Sheet1
Suite Setup    startdriver
Suite Teardown    closedriver

Test Template    login

*** Test Cases ***
check using DDT    ${name}    ${pass}
    
*** Keywords ***
login 
    [Arguments]    ${name}    ${pass} 
     
      
    LoginPage.invalid login    ${name}    ${pass} 
    Sleep    2s     
    Element Should Contain    ${message}    Your username is invalid!  
    sleep  2s 
    Go To   https://the-internet.herokuapp.com/ 
