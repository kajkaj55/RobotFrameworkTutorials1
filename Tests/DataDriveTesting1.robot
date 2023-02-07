*** Settings ***
Library     SeleniumLibrary
Resource    ../Ressources/Keywords/login_resources.robot
Suite Setup     Open the Browser
Suite Teardown  Close the Browser
Test Template   Invaled login

*** Test Cases ***          USERNAME                PASSWORD
Right user empty psw        admin@yourstore.com     ${EMPTY}
Right user wrong psw        admin@yourstore.com     hallo
Wrong user right psw        xyz@yourstore.com       admin
Wrong user empty psw        xyz@yourstore.com       ${EMPTY}
Wrong user wrong psw        xyz@yourstore.com       hello
Empty user empty psw        ${EMPTY}                ${EMPTY}
#Right user right psw        admin@yourstore.com     admin


*** Keywords ***
Invaled login
    [Arguments]     ${username}        ${password}
    Input Username          ${username}
    Input Psw               ${password}
    Click login Button
    Error message should be visible

Valid login
    [Arguments]     ${username}        ${password}
    Input Username          ${username}
    Input Psw               ${password}
    Click login Button
    Login is successful


