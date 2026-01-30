// require('dotenv').config();
// const { Given, When, Then, setDefaultTimeout } = require('@cucumber/cucumber');
// setDefaultTimeout(60 * 1000); // ✅ 60 seconds
// const { expect } = require('@playwright/test');
// const { configDotenv } = require('dotenv');
// const testData = require('../utils/testData');
// const test = require('node:test');
// const loginPage = require('../locators/loginPage');
// const LoginPage = require('../pages/LoginPage');
// this.loginPage = new LoginPage(this.page);
// const env = require('../utils/testData');

require('dotenv').config({ override: true });

const { Given, When, Then, setDefaultTimeout } = require('@cucumber/cucumber');
const { expect } = require('@playwright/test');
const LoginPage = require('../pages/LoginPage');
const env = require('../utils/testData');

setDefaultTimeout(60 * 1000);


Given('user navigates to FCMS login page', async function () {
  this.loginPage = new LoginPage(this.page);
  await this.loginPage.navigateToLogin(env.baseUrl);
});

When('user enters valid username and password', async function () {
  await this.loginPage.enterCredentials(env.username, env.password);
  console.log('ENV USERNAME:', env.username);
  console.log('ENV PASSWORD:', env.password);
});

When('user clicks on login button', async function () {
  await this.loginPage.clickLogin();
});

Then('user should be logged in successfully', async function () {
  const loggedIn = await this.loginPage.isLoggedIn();
  expect(loggedIn).toBe(true);
});

Then('user logs out from the application', async function () {
  await this.loginPage.logout();
});

Then('user should be logged out successfully', async function () {
  expect(this.page.url()).toContain('CMSSiteLogin');
});

When('user enters invalid username and password', async function () {
  await this.loginPage.enterCredentials(env.invalidUsername, env.invalidPassword);
});

Then('user should see an error message', async function () {
  const errorMessage = await this.loginPage.getErrorMessage();
  expect(errorMessage).toContain('Your login attempt has failed');
});

