*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    Open Browser    https://testautomationpractice.blogspot.com/        firefox
    
    Set Selenium Speed    3
    Click Button    xpath=//button[@onclick='myFunction()']     #open alert window

    Alert Should Be Present     Press a button!        #alert countain the message or element and than confirm with ok
    
    #Handle Alert    accept      # when click on OK
    #Handle Alert    dismiss     # when click cancel
    #Handle Alert        leave

    Close Browser

Testing Frames
    Open Browser    https://www.selenium.github.io/selenium/docs/api/java/index     chrome

    Select Frame    packageListFrame        #id, name or xpath
    Click Link    org.openqa.selenium
    Unselect Frame

    Select Frame    packageFrame        #id, name or xpath
    Click Link    WebDriver
    Unselect Frame

    Select Frame    packageListFrame        #id, name or xpath
    Click Link    Help
    Unselect Frame

    Close Browser