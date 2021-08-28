const functions = require('firebase-functions');
const cors = require('cors')({origin: true});
const nodemailer = require('nodemailer');
const admin = require('firebase-admin');
admin.initializeApp();
