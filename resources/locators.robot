*** Variables ***
# Locators for authorization
${LOCATOR_OPEN_LOGIN_FORM}    class:_3Wg53T10KuuPmyWOMWsY2F
${LOCATOR_FRAME}    tag:iframe
${LOCATOR_USERNAME}    id:loginUsername
${LOCATOR_PASSWORD}    id:loginPassword
${LOCATOR_BUTTON_AUTHORIZATION}    class:AnimatedForm__submitButton
${LOCATOR_LOGIN_FORM}    class:Login
${LOCATOR_PENDING}    class:m-pending

# Locators for closing topics list
${LOCATOR_TOPICS_LIST}    class:_2aK1Wp37TOccNSDJhJiDXo
${LOCATOR_CLOSE_TOPICS_LIST}    xpath://*[@id="SHORTCUT_FOCUSABLE_DIV"]/div[4]/div/div/div/header/div[1]/div[2]/button

# Locators for working with search field
${LOCATOR_SEARCH_FIELD}    id:header-search-bar
${LOCATOR_SUGGEST_LIST}    class:_20OHBqoDD71_8fv7tuG6u6

# Locator for working with result search
${LOCATOR_POSTS}    class:_1oQyIsiPHYt6nx7VOmd1sz

# Locators for working with comment creater
${LOCATOR_POST_EDIT}    class:notranslate
${LOCATOR_BUTTON_SEND_COMMENT}    class:_22S4OsoDdOqiM-hPTeOURa

# Locator for delete comment
${LOCATOR_OPTIONS_COMMENT}    xpath://div[@class='_3sf33-9rVAO_v4y0pIW_CH']//button[contains(@class,'_2pFdCpgBihIaYh9DSMWBIu')]
${LOCATOR_DELETE_BUTTON}    xpath://*[@id="overlayScrollContainer"]/div[6]/div/button[4]
${LOCATOR_AGREEMENT_DELETE}    class:_17UyTSs2atqnKg9dIq5ERg
${LOCATOR_DELETE_COMMENT}    class:_3tw__eCCe7j-epNCKGXUKk