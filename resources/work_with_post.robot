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