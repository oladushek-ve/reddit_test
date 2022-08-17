*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/create_browser.robot
Resource    ../resources/authorization.robot
Resource    ../resources/work_with_post.robot
Variables    ../resources/variables/login_data.py
Variables    ../resources/variables/content.py


*** Test Cases ***
Open Browser
    Create Chrome

Authorizations On Page
    Authorization    ${username_reddit}    ${password_reddit}

Close Topics List After Authorization
    Close Topics List

Find Post By Key
    Find Post    ${post_name}

Add Comment Uder Post
    Create Comment    ${comment_content}

Delete Comment Uder Post
    Delete Comment
    close browser


