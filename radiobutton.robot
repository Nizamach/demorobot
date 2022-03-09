*** Settings ***
Library        SeleniumLibrary
Test Setup      Open Browser        ${webURL}       ${BROWSERS}
Test Teardown       Close Browser

*** Variables ***
${webURL}       https://demoqa.com/radio-button
${BROWSERS}     chrome

*** Test Case ***
Choose Yes from Radio Button
    Maximize Browser Window
    Click Element    //*[@id="app"]/div/div/div[2]/div[2]/div[2]/div[3]/label
    Element Should Be Visible       //*[@id="app"]/div/div/div[2]/div[2]/div[2]/p/span    
    Element Should Contain      //*[@id="app"]/div/div/div[2]/div[2]/div[2]/p/span       Impressive