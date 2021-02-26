const functions = require('firebase-functions');
const cors = require('cors')({origin: true});
const nodemailer = require('nodemailer');

const transporter = nodemailer.createTransport({
  host: 'smtp.gmail.com',
  port: 465,
  secure: true,
  auth: {
    user: 'docputs@gmail.com',
    pass: 'fmtqmegazord*2019',
  },
});

exports.sendMail = functions.https.onRequest((req, res) => {
  cors(req, res, () => {
    const managerName = req.query.name;
    const managerEmail = req.query.email;
    const parkingLotTitle = req.query.title;
    const parkingLotAddress = req.query.address;

    const mailOptions = {
      from: 'DocPuts <docputs@gmail.com>',
      to: 'docputs@gmail.com',
      subject: managerName + ' cadastrou um estacionamento',
      text: `O usuário ${managerEmail} cadastrou o seguinte estacionamento:

  Título: ${parkingLotTitle}
  Endereço: ${parkingLotAddress}`,
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
