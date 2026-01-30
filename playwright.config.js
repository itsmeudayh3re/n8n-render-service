const { defineConfig } = require('@playwright/test');

module.exports = defineConfig({
  use: {
    headless: false,
    screenshot: 'only-on-failure',
    video: 'retain-on-failure',
    trace: 'on-first-retry'
  },
  reporter: [['allure-playwright']]
});
