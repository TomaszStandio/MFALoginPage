*** Settings ***
Library  SeleniumLibrary
Resource  ../resource/Variables.resource
Resource  ../resource/MFALoginPageXpath.resource

*** Keywords ***
Open login page
    Open Browser  ${loginPage}  ${browser}
    Maximize Browser Window
    Wait Until Element Is Enabled  ${usernameField}
    Title Should Be    ${loginPageTitle}

Click Sign In button
    Click Element  ${signInButton}

Error message regarding required fill field is appeard
    Element Should Be Visible    ${errorMessage}

Fill out Multi-Factor Auth Code field with valid value
    Go To  ${credentialUrl}
    ${multiFactorAuthCode}=  Get Text  ${ultiFactorAuthCodeValueSelector}
    Go Back
    Input Text  ${multiFactorAuthCodeSelector}  ${multiFactorAuthCode}   

Fill out Multi-Factor Auth Code field with invalid value
    Input Text  ${multiFactorAuthCodeSelector}  ${invalidMultiFactorAuthCode}

Fill out userName field with valid value
    Input Text  ${usernameField}  ${userName}

Fill out userName field with invalid value
    Input Text  ${usernameField}  ${invalidUserName}

Fill out password field with valid value
    Input Password  ${passwordField}  ${password}

Fill out password field with invalid value
    Input Text  ${passwordField}  ${invalidPassword}

Login correct
    Wait Until Element Is Enabled    ${mainImageSelector}
    Title Should Be    ${mainPageTitle}

Error message regarding invalid userName is appeard
    Element Text Should Be  ${errorMessage}  ${expectInvalidUserNameErrorMessage}

Error message regarding invalid password is appeard
    Element Text Should Be  ${errorMessage}  ${expectInvalidPasswordErrorMessage}

Error message regarding invalid MFA Code is appeard
    Element Text Should Be  ${errorMessage}  ${expectInvalidMFACodeErrorMessage}

Login to website
    Fill out Multi-Factor Auth Code field with valid value
    Fill out password field with valid value
    Fill out userName field with valid value
    Click Sign In button
    Login correct

Sign off from website
    Click Element  ${signOutButton}


Login page is loaded
    Wait Until Element Is Enabled  ${usernameField}
    Title Should Be    ${loginPageTitle}
    Page Should Contain  ${signOutErrorMessage}
