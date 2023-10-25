*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}             https://www.google.com 
${browser}         chrome



*** Test Cases ***
InputBox
    Open Browser                ${url}         ${browser}
    Maximize Browser Window
    Sleep                       2s
    Input Text                  xpath=//textarea[@id='APjFqb']    Amazon
    Press Keys                  xpath=//textarea[@id='APjFqb']    ENTER
    Clear Element Text          xpath=//textarea
    Sleep                       2s
    Input Text                  xpath=//textarea                  Facebook
    Click Button                css=button.Tg7LZd
    Sleep                       2s 
    Close Browser
*** Keywords ***
