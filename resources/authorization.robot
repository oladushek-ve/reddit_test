*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections
Variables    ./variables/conf.py
Variables    ./variables/login_data.py


*** Keywords ***
Authorization
    ${body}=    Create Dictionary    grant_type=password    username=${username}    password=${password}
    ${headers}=    Create Dictionary    User-Agent=${useragent}
    ${auth}=    Create List    ${client_id}    ${secret_key}

    Create Session  alias=authorizating    url=${token_url}    auth=${auth}    verify=true

    ${responce}=    POST On Session    authorizating    ${auth_url}    data=${body}    headers=${headers}
    Status Should Be    200    ${responce}
    LOG    Response = ${responce}
    LOG    Json Data = ${responce.json()}

    ${token}=    Catenate    bearer    ${responce.json()['access_token']}
    LOG    Token = ${token}

    Set To Dictionary    ${headers}    Authorization    ${token}

    LOG    Headers = ${headers}

    [Return]    ${headers}