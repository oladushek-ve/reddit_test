*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Variables    ./variables/conf.py
Variables    ./variables/login_data.py

*** Variables ***
${AuthUrl}    api/v1/access_token

*** Keywords ***
Authorization
    ${body}=    Create Dictionary    grant_type=password    username=${username}    password=${password}
    ${headers}=    Create Dictionary    User-Agent=${useragent}
    ${auth}=    Create List    ${client_id}    ${secret_key}

    Create Session  alias=redditsession    url=${token_url}    auth=${auth}    verify=true

    ${responce}=    POST On Session    redditsession    ${AuthUrl}    data=${body}    headers=${headers}
    Status Should Be    200    ${responce}
    LOG    Response = ${responce}
    LOG    Json Data = ${responce.json()}

    ${token}=    Catenate    bearer    ${responce.json()['access_token']}
    LOG    Token = ${token}

    [Return]    ${token}