*** Variables ***
# Locators for authorization
${LOCATOR_OPEN_LOGIN_FORM}    class:_3Wg53T10KuuPmyWOMWsY2F
${LOCATOR_FRAME}    tag:iframe
${LOCATOR_USERNAME}    id:loginUsername
${LOCATOR_PASSWORD}    id:loginPassword
${LOCATOR_BUTTON_AUTHORIZATION}    class:AnimatedForm__submitButton

# Locators for closing topics list
${LOCATOR_TOPICS_LIST}    class:_2aK1Wp37TOccNSDJhJiDXo
${LOCATOR_CLOSE_TOPICS_LIST}    xpath://*[@id="SHORTCUT_FOCUSABLE_DIV"]/div[4]/div/div/div/header/div[1]/div[2]/button

# Locators for working with search field
${LOCATOR_SEARCH_FIELD}    id:header-search-bar
${LOCATOR_SUGGEST_LIST}    class:_20OHBqoDD71_8fv7tuG6u6

# Locator for working with result search
${LOCATOR_POSTS}    class:_1oQyIsiPHYt6nx7VOmd1sz

# Locators for working with comment creater
${LOCATOR_POST_EDIT}    id:comment-submission-form-richtext
${LOCATOR_BUTTON_SEND_COMMENT}    class:_3SNMf5ZJL_5F1qxcZkD0Cp