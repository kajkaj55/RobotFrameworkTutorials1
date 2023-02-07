*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Mouse click o right
    #Right click/open context menu
    Open Browser    http://swisnl.github.io/jQuery-contextMenu/demo.html        firefox
    Maximize Browser Window
    Open Context Menu    xpath=//span[@class='context-menu-one btn btn-neutral']
Double click action
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath=//button[contains(@ondblclick,'myFunction1()')]
    Drag And Drop    xpath=//img[@alt='the peaks of high tatras']    id=droppable
    Sleep    3
DragAndDrop actions
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Sleep    3
    Drag And Drop    id=box6    id=box106
    Close All Browsers