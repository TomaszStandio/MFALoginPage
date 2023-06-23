*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${usernameField}  id:username
${signInButton}  id:log-in
${signOutButton}  //*[@href='https://seleniumbase.io/realworld/logout']
${errorMessage}  id:top_message
${passwordField}  id:password
${multiFactorAuthCodeSelector}  id:totpcode
${ultiFactorAuthCodeValueSelector}  id:totp
${mainImageSelector}  id:image1