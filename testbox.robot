*** Settings ***
Library        SeleniumLibrary
Test Setup      Open Browser        ${webURL}       ${BROWSERS}
Test Teardown       Close Browser

*** Variables ***
${webURL}       http://uitestingplayground.com/textinput
${BROWSERS}     chrome

*** Test Cases ***
Type My Name in the Field
    Maximize Browser Window
    Input Text      //*[@id="newButtonName"]        Nizam
    # Click Element        //*[@id="updatingButton"]
    Click Button        //*[@id="updatingButton"]
    Sleep       2s