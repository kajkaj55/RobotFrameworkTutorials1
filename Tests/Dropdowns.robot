*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      firefox
${url}          http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling Dropdowns and Lists
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Set Selenium Speed    2

    #Select one element from dropdownlist
    Select From List By Label    continents     Australia
    #or use
    Select From List By Index    continents     5

    #Select/unselect few elements from box/list
    Select From List By Label    selenium_commands  Switch Commands
    Select From List By Label    selenium_commands  WebElement Commands

    unselect From List By Label    selenium_commands  Switch Commands
