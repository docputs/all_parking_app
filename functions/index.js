const functions = require('firebase-functions');
const cors = require('cors')({origin: true});
const nodemailer = require('nodemailer');
const admin = require('firebase-admin');
admin.initializeApp();

const transporter = nodemailer.createTransport({
  host: 'smtp.gmail.com',
  port: 465,
  auth: {
    user: 'docputs@gmail.com',
    pass: 'fcghesecexpuyjdd',
  },
});

exports.sendMail = functions.https.onRequest((req, res) => {
  cors(req, res, () => {
    const managerName = req.query.name;
    const managerEmail = req.query.email;
    const parkingLotTitle = req.query.title;
    const parkingLotAddress = req.query.address;
    const parkingLotCep = req.query.cep;

    const mailOptions = {
      from: 'Firebase <docputs@gmail.com>',
      to: ['docputs@gmail.com', 'jvsoares@usp.br'],
      subject: managerName + ' cadastrou um estacionamento',
      text: `O usuário ${managerEmail} cadastrou o seguinte estacionamento:

Título: ${parkingLotTitle}
Endereço: ${parkingLotAddress}, ${parkingLotCep}
  
All Parking`,
    };

    return transporter.sendMail(mailOptions, (err, info) => {
      if (err) {
        console.log(err);
        return res.send(err.toString());
      }
      return res.send('Mensagem enviada');
    });
  });
});
