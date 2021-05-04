*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${upload_link}   xpath://*[@id="content"]/ul/li[18]/a
${choose_file_btn}  xpath://*[@id="file-upload"] 
${upload_btn}   xpath://*[@id="file-submit"] 
${sucess_msg}   xpath://*[@id="content"]/div/h3
*** Keywords ***
check upload files 
    Scroll Element Into View    ${upload_link}
    Click Element    ${upload_link}
    sleep   3s
    Choose File    ${choose_file_btn}     ${EXECDIR}\\TestData\\DummyPDF_16kb.pdf
    sleep   3s
    Click Button    ${upload_btn}  
    sleep   3s  
    