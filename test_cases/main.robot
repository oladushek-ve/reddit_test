*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/authorization.robot
Resource    ../resources/work_with_post.robot
Variables    ../resources/variables/conf.py


*** Test Cases ***
Reddit Work
    ${headers}=    Authorization
    Create Session    alias=check_auth    url=${base_url}    verify=true
    ${response}=    GET On Session    check_auth    ${check_auth_url}    headers=${headers}
    Status Should Be    200    ${response}

    ${fullname_post}=    Find Post    ${headers}
    ${fullname_comment}=    Send Comment    ${headers}    ${fullname_post}
    Del Comment    ${headers}    ${fullname_comment}