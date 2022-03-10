*** Settings ***
Library             SeleniumLibrary
Test Setup          Open Browser            ${webURL}          ${BROWSERS}
Test Teardown       Close Browser

*** Variables ***
${webURL}           https://demoqa.com/checkbox
${BROWSERS}         gc

*** Test Case ***
Check Choose from Check Box
    Click Element                   //button[@title="Expand all"]
    Click Element                   (//span[@class="rct-checkbox"])[3]
    Element Should Be Visible       //div[@id="result"]
    Element Should Contain          //span[@class="text-success"]         notes   
    # Element Should Contain          //div[@id="result"]         notes
    Sleep                   2s