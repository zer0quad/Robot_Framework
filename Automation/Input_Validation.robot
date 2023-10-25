*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${url}            https://www.flipkart.com/
${browser}        chrome

*** Test Cases ***
ValidationTest
    Open Browser                                          ${url}       ${browser}
    Maximize Browser Window
    Wait Until Page Contains                              flipkart
    Wait Until Page Contains                              Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
    ${input_text_field}             Set Variable          xpath=//input[@class='_18u87m _3WuvDp']
    ${input_txt_field}              Set Variable          //input[@class='_18u87m _2r0Y7j _3WuvDp']
    Wait Until Element Is Enabled                         ${input_text_field}
    Wait Until Element Is Visible                         ${input_text_field}
    Sleep                                                 3s
    Input Text                      ${input_text_field}   pranvsridhar1997@gmail.com
    Sleep                                                 3s
    Clear Element Text              ${input_txt_field}
    Sleep                                                 3s
    Close All Browsers
*** Keywords ***