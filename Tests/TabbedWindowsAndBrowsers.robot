*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    Open Browser        http://dem.automationtesting.in/Windows.html        firefox
    Click Element       xpath=//*[@id="Tabbed"]/a/button
    #select window       title=Sakinalium | Home        # not work for me
    Click Element       xpath=//*[@id="container"]/header/div/div/div[2]/ul/li[4]/a
    Sleep    3
    Close Browser



MultipleBrowser
    Open Browser        https://www.google.com/         firefox
    Maximize Browser Window

    Sleep    3
    Open Browser        https://www.bing.com/           firefox
    Maximize Browser Window
    
    Switch Browser    1
    ${title1}=  Get Title
    Log To Console    ${title1}
    
    Switch Browser    2
    ${title2}=  Get Title
    Log To Console    ${title2}
    
    Sleep    3

    Close All Browsers

NavigationTest
    Open Browser    https://www.google.com/         firefox
    Go To    https://www.bing.com/
    Go Back