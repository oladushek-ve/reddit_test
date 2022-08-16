*** Settings ***
Library    SeleniumLibrary
Resource    ./locators.robot


*** Keywords ***
Find Post
    [Arguments]    ${PostName}
    input text   ${LOCATOR_SEARCH_FIELD}    ${PostName}
    wait until page contains element    ${LOCATOR_SUGGEST_LIST}
    click link    ${LOCATOR_SUGGEST_LIST}
    wait until page contains element    ${LOCATOR_POSTS}
    page should contain element    ${LOCATOR_POSTS}    Post not found by name ${PostName}
    click element    ${LOCATOR_POSTS}

Create Comment
    [Arguments]    ${Comment}
    wait until page contains element    ${LOCATOR_POST_EDIT}    30
    click element    ${LOCATOR_POST_EDIT}
    press keys    ${LOCATOR_POST_EDIT}    ${Comment}
    click button    ${LOCATOR_BUTTON_SEND_COMMENT}
    wait until element contains    ${LOCATOR_BUTTON_SEND_COMMENT}   Comment


Delete Comment
    click button    ${LOCATOR_OPTIONS_COMMENT}
    click button    ${LOCATOR_DELETE_BUTTON}
    click button    ${LOCATOR_AGREEMENT_DELETE}
