require('dotenv').config({ override: true });


module.exports = {
  baseUrl: process.env.FCMS_LOGIN_URL,
  username: process.env.FCMS_USERNAME,
  password: process.env.FCMS_PASSWORD,
  invalidUsername: process.env.FCMS_INVALID_USERNAME,
  invalidPassword: process.env.FCMS_INVALID_PASSWORD
};