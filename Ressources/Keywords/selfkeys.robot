*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]     ${urlArg}      ${browserArg}        #with argument
    Open Browser    ${urlArg}      ${browserArg}        #with argument
    #Open Browser    ${url}      ${browser}             #without arguments
    Maximize Browser Window
    Sleep    3

    Add Cookie    name    value
    #Select Frame    name=__tcfapiLocator
    #Wait Until Page Contains    Verwalten Sie Ihre Privatsphäre
    #Click Button    xpath=//button[contains(.,'Alle ablehnen')]
    Handle Alert    accept
    ${title}=   get title
    [RETURN]    ${title}
loginSite
    Input Text    name=userName    mercury
    Input Text    name=userName    mercury
    Click Button    name=submit


