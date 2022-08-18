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

    ${response}=    POST On Session    authorizating    ${auth_url}    data=${body}    headers=${headers}
    Status Should Be    200    ${response}
    LOG    Response = ${response}
    LOG    Json Data = ${response.json()}

    ${token}=    Catenate    bearer    ${response.json()['access_token']}
    LOG    Token = ${token}

    Set To Dictionary    ${headers}    Authorization    ${token}

    LOG    Headers = ${headers}

    [Return]    ${headers}