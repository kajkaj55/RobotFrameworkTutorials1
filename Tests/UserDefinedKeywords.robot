*** Settings ***
Library     SeleniumLibrary
Resource    ../Ressources/Keywords/selfkeys.robot

*** Variables ***
${url}              https://demo.guru99.com/test/newtours/
${browser}          firefox

*** Test Cases ***
testcase1
    #launchBrowser              #without argemunt
    ${PageTitle} =      launchBrowser    ${url}      ${browser}             #with argument
    Log To Console    ${PageTitle}
    loginSite
