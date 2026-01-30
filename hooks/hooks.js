const { Before, After, AfterStep, setDefaultTimeout } = require('@cucumber/cucumber');
const { chromium } = require('playwright');
const { allure } = require('allure-cucumberjs');

setDefaultTimeout(60 * 1000);

// Before(async function () {
//   this.browser = await chromium.launch({ headless: false, args: ['--start-maximized'], slowMo: 300 });
//   this.context = await this.browser.newContext();
//   this.page = await this.context.newPage();
//   this.page.setDefaultTimeout(60000);
// });

Before(async function () {
  this.browser = await chromium.launch({
    headless: false,
    args: ['--start-maximized'],
    slowMo: 300
  });

  // ✅ Disable Playwright’s default viewport so it respects the maximized window
  this.context = await this.browser.newContext({ viewport: null });
  this.page = await this.context.newPage();
  this.page.setDefaultTimeout(60000);
});


After(async function () {
  await this.browser.close();
});

AfterStep(async function ({ result }) {
  if (result.status === 'FAILED') {
    const screenshot = await this.page.screenshot();
    allure.attachment('Screenshot', screenshot, 'image/png');
  }
});