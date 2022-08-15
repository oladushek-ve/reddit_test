*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BrowserName}    Chrome
${ChromeDriverPath}    ./chromedriver

${BaseUrl}    https://reddit.com


*** Keywords ***
Create Chrome
    ${chrome_options} =    Evaluate    selenium.webdriver.ChromeOptions()
    Call Method    ${chrome_options}    add_argument    --start-maximized
    Call Method    ${chrome_options}    add_argument    --disable-notifications

    Create WebDriver    ${BrowserName}    executable_path=${ChromeDriverPath}    chrome_options=${chrome_options}
    Go to    ${BaseUrl}