*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html       firefox
    Wait Until Page Contains    Country
    Maximize Browser Window
    #Execute Javascript  window.scrollTo(0,1500)
    #Scroll Element Into View    xpath=(//img[@width='68'])[181]
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)       #end of the page
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)      #Starting point