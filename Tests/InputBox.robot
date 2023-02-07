*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}      firefox
${url}          https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Sleep    3
    Title Should Be    nopCommerce demo store

    Click Link    xpath=//a[@class='ico-login']
    ${"email_txt"}  Set Variable    id:Email

    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}

    Input Text    ${"email_txt"}    JohanDavid@gmail.com
    Sleep    3
    Clear Element Text    ${"email_txt"}

    Close Browser
