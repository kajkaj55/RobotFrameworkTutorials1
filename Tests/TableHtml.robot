*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Tablevalidations
    Open Browser        https://testautomationpractice.blogspot.com/        firefox
    Maximize Browser Window
    Sleep    3
    
    ${rows}=    Get Element Count    xpath=//table[@name='BookTable']/tbody/tr          
    ${cols}=    Get Element Count    xpath=//table[@name='BookTable']/tbody/tr[1]/th    #th or td tag
    
    #Log To Console    ${rows}
    #Log To Console    ${cols}
    #${data}=    Get Text    xpath=//table[@name='BookTable']/tbody/tr[2]/td[2]
    #Log To Console    ${data}

    Table Column Should Contain    xpath=//table[@name='BookTable']    2    Author
    Table Row Should Contain    xpath=//table[@name='BookTable']    4       Learn JS
    Table Cell Should Contain    xpath=//table[@name='BookTable']    5    2    Mukesh
    Table Header Should Contain    xpath=//table[@name='BookTable']    BookName

    Close All Browsers