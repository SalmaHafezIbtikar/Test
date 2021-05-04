*** Settings ***
Library     SeleniumLibrary    

*** Variables ***
${frame_link}    xpath://*[@id="content"]/ul/li[22]/a
${iframe_Link1}  xpath://*[@id="content"]/div/ul/li[2]/a
${frame}  id:mce_0_ifr
${txt}    id:tinymce

*** Keywords ***
open Iframe 
    
    Scroll Element Into View    ${frame_link}
    Sleep    2s     
    Click Element    ${frame_link}
    Sleep    2s     
    Click Element    ${iframe_Link1} 
    Sleep    2s     
    Select Frame    ${frame}
    Clear Element Text    ${txt}
    Sleep    2s     
    Input Text    ${txt}    Welcome to our Robot framework project :D !
    Sleep    2s     
    Unselect Frame     