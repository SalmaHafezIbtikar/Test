*** Settings ***
Library    SeleniumLibrary    
Resource     testBase.robot
Resource    ../pages/FramePage.robot

Suite Setup   testbase.startdriver
Suite Teardown    testbase.closedriver

*** Test Cases ***
Write txt in frame 
    FramePage.open Iframe  
