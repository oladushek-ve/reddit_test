*** Settings ***
Library    SeleniumLibrary
Resource    ./login_data.robot
Resource    ./locators.robot

*** Keywords ***
Close Topics List
    wait until page contains element    ${LOCATOR_TOPICS_LIST}    10
    click button    ${LOCATOR_CLOSE_TOPICS_LIST}

Authorization
    click element    ${LOCATOR_OPEN_LOGIN_FORM}
    wait until page contains element    ${LOCATOR_FRAME}
    select frame    ${LOCATOR_FRAME}
    input text    ${LOCATOR_USERNAME}    ${UsernameReddit}
    input text    ${LOCATOR_PASSWORD}    ${PasswordReddit}
    click button    ${LOCATOR_BUTTON_AUTHORIZATION}
    Close Topics List


