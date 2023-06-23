*** Variables ***
${loginPage}  https://seleniumbase.io/realworld/login
${browser}  edge
${loginPageTitle}  Login / MFA Demo App
${userName}  demo_user
${invalidUserName}  demouser
${password}  secret_pass
${invalidPassword}  secretpass
${invalidMultiFactorAuthCode}  123456
${credentialUrl}  https://seleniumbase.io/realworld/signup
${mainPageTitle}  Welcome / Demo App
${expectInvalidUserNameErrorMessage}  Invalid Username!
${expectInvalidPasswordErrorMessage}  Invalid Password!
${expectInvalidMFACodeErrorMessage}  Invalid MFA Code!
${signOutErrorMessage}  You have been signed out!

${multiFactorAuthCode}
