*** Settings ***
Library    SeleniumLibrary    

Resource    testbase.robot
Resource    ../pages/Uploadfile.robot

Suite Setup    testbase.startdriver
Suite Teardown    testbase.closedriver

*** Test Cases ***
check upload files 
    Uploadfile.check upload files
    sleep  3s 
    Element Should Contain    ${sucess_msg}    File Uploaded!    