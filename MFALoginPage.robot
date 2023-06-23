*** Settings ***
Resource   keywords/MFALoginPageKeywords.resource


*** Test Cases ***
Login Page is loded
    Open login page
    Close Browser

Login without filling out form
    Open login page
    Click Sign In button
    Error message regarding required fill field is appeard
    Close Browser

Correct login
    Open login page
    Fill out Multi-Factor Auth Code field with valid value
    Fill out userName field with valid value
    Fill out password field with valid value
    Click Sign In button
    Login correct
    Close Browser

Invalid user name
    Open login page
    Fill out Multi-Factor Auth Code field with valid value
    Fill out userName field with invalid value
    Fill out password field with valid value
    Click Sign In button
    Error message regarding invalid userName is appeard
    Close Browser

Invalid password
    Open login page
    Fill out Multi-Factor Auth Code field with valid value
    Fill out userName field with valid value
    Fill out password field with invalid value
    Click Sign In button
    Error message regarding invalid password is appeard
    Close Browser

Invalid Multi-Factor Auth Code
    Open login page
    Fill out Multi-Factor Auth Code field with invalid value
    Fill out userName field with valid value
    Fill out password field with valid value
    Click Sign In button
    Error message regarding invalid MFA Code is appeard
    Close Browser

Logout from website
    Open login page
    Login to website
    Sign off from website
    Login page is loaded
    Close Browser
