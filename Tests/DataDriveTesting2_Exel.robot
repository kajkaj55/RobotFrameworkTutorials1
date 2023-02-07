*** Settings ***
Library     SeleniumLibrary
Resource    ../Ressources/Keywords/login_resources.robot
Library     DataDriver   ../TestData/LoginData.xlsx     sheet_name=Tabelle3
Suite Setup     Open the Browser
Suite Teardown  Close the Browser
Test Template   Invaled login

*** Test Cases ***
#LoginTestwithExel using     ${username}     ${password}
${TC} using ${username} and ${password}
*** Keywords ***
Invaled login
    [Arguments]     ${username}        ${password}
    Input Username          ${username}
    Input Psw               ${password}
    Click login Button
    Error message should be visible