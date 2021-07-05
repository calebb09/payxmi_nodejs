var path = require('path');
var mysql = require('mysql');
var requestIp = require('request-ip');
var D_HOST = "localhost";
var D_USER = "root";
var D_PASS = "";
var D_BASE = "andrqeah_pay2wallet";
var env = process.env;
var OAUTH = '';     // username email address that is
var OAUTH_Pas = ''; //access given from yahoo
var Email_host = 'smtp.mail.yahoo.com'; //if you are using the yahoo
var Email_port = 465;

var PORT = env.PORT || 8082;
var API_URL = env.API_URL || '127.0.0.1:8082';
var NODE_ENV = env.NODE_ENV || 'development';
var HOST = env.HOST || 'localhost';

var conn = mysql.createConnection({
  host: D_HOST,
  user: D_USER,
  password: D_PASS,
  database: D_BASE
});  
module.exports = {
  IPADDR: requestIp,
  EPORT: Email_port,
  EHOST: Email_host,
  GUSER: OAUTH,
  GPASS: OAUTH_Pas,
  MySQL: conn,
  API_URL: API_URL,
  ENV: NODE_ENV,
  PORT: PORT,
  HOST: HOST,
  DOCS_URL: API_URL,
  MOODLE_TOKEN_LENGTH: 26,
  TOKEN_LENGTH: 64,
  TOKEN: {
    RANDOM_BYTE_LENGTH: 32
  },
  // MongoDB URL
  // this is where you update or upgrade when mongoose is showing a deprecating message

  CORS_OPTS: {
    origin: '*',
    methods: 'GET,POST,PUT,DELETE,OPTIONS',
    allowedHeaders: 'Origin,X-Requested-With,Content-Type,Accept,Authorization'
  },

  SALT_FACTOR: 12,

  TOKEN: {
    RANDOM_BYTE_LENGTH: 32
  },
  errorResponse: {
    userNameEmpty: {
      code: 700,
      msg: 'Username should not be empty'
    },
    userNameEmail: {
      code: 701,
      msg: 'Username should be valid email'
    },
    passwordEmpty: {
      code: 702,
      msg: 'Password should not be empty'
    },
    passwordLength: {
      code: 703,
      msg: '6 to 20 characters required'
    }
  },
  MEDIA: {
    FILE_SIZE: 1 * 1024 * 1024, // 2MB,
    URL: API_URL + '/media/',
    FILES_FOLDER: path.resolve(process.cwd(), './media') + '/',
    UPLOADES: path.resolve(process.cwd(), './public/uploads') + '/',
  },
  AGENT_COMMISSION: {
    RATE: 0.2,
    PAYMENT: 10,
    ROUND: 2,
  },
  COMPANY_COMMISSION: {
    RATE: 0.2,
  }
};