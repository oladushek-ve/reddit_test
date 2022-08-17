*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/authorization.robot
Variables    ../resources/variables/login_data.py


*** Test Cases ***
Authorizations On Page
    Authorization

