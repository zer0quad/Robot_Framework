*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}             https://www.youtube.com/channel/UCvWXyIFNKuAtlLkKYVUF6ag 
${browser}         chrome

*** Test Cases ***
Google
    Inside_My_Channel
*** Keywords ***
Inside_My_Channel
    Open Browser                ${url}     ${browser}      
    Maximize Browser Window
    Sleep                       10s
    Close Browser