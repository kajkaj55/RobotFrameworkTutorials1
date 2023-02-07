*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Login URL}        https://admin-demo.nopcommerce.com
${Browser}          firefox

*** Keywords ***
Open the Browser
    Open Browser   ${Login URL}      ${Browser}
    Maximize Browser Window
    Set Selenium Speed    1

Close the Browser
    Close All Browsers

Open Login Page
    Go To    https://admin-demo.nopcommerce.com
    
Input Username
    [Arguments]     ${username}
    Clear Element Text    id:Email
    Input Text    id:Email    ${username}
    
Input Psw
    [Arguments]     ${Password}
    Clear Element Text    id:Password
    Input Text    id:Password    ${Password}
    
Click login Button
    Click Button    xpath=//button[@type='submit']
    
Click logout Button
    Click Link    logout
    
Error message should be visible
    Page Should Contain     Login was unsuccessful

Login is successful
    Page Should Contain    Dashboard


