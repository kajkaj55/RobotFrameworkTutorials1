*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${browser}      firefox
${url}          http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Set Selenium Speed    2
    #select Radio Button
    Select Radio Button    sex    Female
    Select Radio Button    exp    5
    #select check box
    Select Checkbox    BlackTea
    Select Checkbox    RedTea
    Unselect Checkbox    BlackTea

    


