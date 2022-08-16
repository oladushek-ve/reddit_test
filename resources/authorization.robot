*** Settings ***
Library    SeleniumLibrary
Resource    ./locators.robot


*** Keywords ***
Close Topics List
    wait until page contains element    ${LOCATOR_TOPICS_LIST}    30
    page should contain element    ${LOCATOR_TOPICS_LIST}    Not topics list
    click button    ${LOCATOR_CLOSE_TOPICS_LIST}

Authorization
    [Arguments]    ${UserName}    ${Password}
    click element    ${LOCATOR_OPEN_LOGIN_FORM}
    wait until page contains element    ${LOCATOR_FRAME}
    select frame    ${LOCATOR_FRAME}
    input text    ${LOCATOR_USERNAME}    ${UserName}
    input password    ${LOCATOR_PASSWORD}    ${Password}
    click button    ${LOCATOR_BUTTON_AUTHORIZATION}
    wait until page does not contain element    ${LOCATOR_LOGIN_FORM}    10
    page should not contain element    ${LOCATOR_LOGIN_FORM}
