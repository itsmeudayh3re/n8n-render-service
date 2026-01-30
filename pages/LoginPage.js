const loginPageLocators = require('../locators/loginPage');

class LoginPage {
  constructor(page) {
    this.page = page;
  }

  async navigateToLogin(url) {
    await this.page.goto(url, { waitUntil: 'networkidle' });
    await this.page.waitForSelector(loginPageLocators.usernameField, { timeout: 60000 });
  }

//   async enterCredentials(username, password) {
//     await this.page.fill(loginPageLocators.usernameField, username.trim());
//     await this.page.fill(loginPageLocators.passwordField, password.trim());

//   }

// async clickLogin() {
//   await this.page.waitForSelector(loginPageLocators.loginButton, { state: 'attached' });

//   await this.page.evaluate((selector) => {
//     const btn = document.querySelector(selector.replace('xpath=', ''));
//     btn.form.submit();
//   }, loginPageLocators.loginButton);
// }

async enterCredentials(username, password) {
  await this.page.click(loginPageLocators.usernameField);
  await this.page.keyboard.type(username, { delay: 80 });
  await this.page.keyboard.press('Tab');

  await this.page.keyboard.type(password, { delay: 80 });
  await this.page.keyboard.press('Tab');
}

async clickLogin() {
  await this.page.keyboard.press('Enter');
}

async isLoggedIn() {
  await this.page.waitForSelector(loginPageLocators.logoutButton, { timeout: 60000 });
  return true;
}




  async isLoggedIn() {
    await this.page.waitForSelector(loginPageLocators.logoutButton, { timeout: 60000 });
    await this.page.waitForSelector(loginPageLocators.welcomeLabel, { timeout: 60000 });
    const welcomeText = await this.page.textContent(loginPageLocators.welcomeLabel);
    return welcomeText.includes('PXM Candidate');
  }

  async logout() {
    await this.page.click(loginPageLocators.logoutButton);
    await this.page.waitForSelector(loginPageLocators.welcomeLabel, { state: 'detached', timeout: 60000 });
  }

  async getErrorMessage() {
    await this.page.waitForSelector(loginPageLocators.errorMessage, { state: 'visible', timeout: 10000 });
    return await this.page.textContent(loginPageLocators.errorMessage);
  }
}

module.exports = LoginPage ;