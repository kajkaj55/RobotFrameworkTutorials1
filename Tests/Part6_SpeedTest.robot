*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
RegTest
    Open Browser    https://demowebshop.tricentis.com/      firefox
    Maximize Browser Window
    #Sleep    3
    #Set Selenium Speed    2
    #Set Selenium Timeout    10          #to set tiem to wait when issue
    #Set Browser Implicit Wait    10     #wait in issue case
    Click Link   xpath=//a[@class='ico-register']
    #Wait Until Page Contains    Register        #defaulttime is 5 second
    Select Radio Button    Gender                       M
    Input Text    id:FirstName                          simo
    Input Text    id:LastName                           LastName
    Input Text    xpath=//input[@id='Email']            rifi@hotmail.com
    Input Text    id:Password                           SimoMedo1234    
    Input Text    id:ConfirmPassword                    SimoMedo1234

    #Close Browser
    Close All Browsers