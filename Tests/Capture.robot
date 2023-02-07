*** Settings ***
Library     SeleniumLibrary
Library    SeleniumScreenshots
Library     Screenshot

*** Test Cases ***
ScreenshotLoginTC
    Open Browser        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      firefox
    Maximize Browser Window
    Capture Element Screenshot    xpath://img[contains(@src,'branding.png?1672659722816')]      PhotoAndVideo/Logo.png
    Input Text    name=username    Admin
    Input Text    name=password    admin123
    Click Button    xpath=//button[@type='submit']
    Sleep    2
    Capture Page Screenshot       PhotoAndVideo/LoginTC.png

    #Set Screenshot Directory    Resultat/scennshot
    #Take Screenshot     image

    Close All Browsers