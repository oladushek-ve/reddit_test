*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/create_browser.robot
Resource    ../resources/authorization.robot
Resource    ../resources/work_with_post.robot
Resource    ../resources/login_data.robot

*** Variables ***
${PostName}    Incubator_asdqwerzxcvtyuighjklvnbmfjdghjdf

*** Test Cases ***
Open browser
    Create Chrome

Authorizations on page
    Authorization    ${UsernameReddit}    ${PasswordReddit}

Close Topics List After Authorization
    Close Topics List

Find post by tag
    Find Post    ${PostName}
    close browser



