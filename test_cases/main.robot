*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/create_browser.robot
Resource    ../resources/authorization.robot
Resource    ../resources/work_with_post.robot
Resource    ../resources/login_data.robot

*** Variables ***
${PostName}    Incubator_asdqwerzxcvtyuighjklvnbmfjdghjdf
${CommentContent}    Hello dear world

*** Test Cases ***
Open Browser
    Create Chrome

Authorizations On Page
    Authorization    ${UsernameReddit}    ${PasswordReddit}

Close Topics List After Authorization
    Close Topics List

Find Post By Key
    Find Post    ${PostName}

Add Comment Uder Post
    Create Comment    ${CommentContent}

Delete Comment Uder Post
    Delete Comment
    close browser


