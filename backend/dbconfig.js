
// const config = {
//     user : 'DESKTOP-0QNNOCT\Zahra',
//     password : '',
//     server : '127.0.0.1',
//     database : 'projectDB',
//     Options : {
//         trustedConnection : true,
//         enableArothAort : true,
//         instancename : 'SQLEXPRESS'
//     },
//     port : 1433
// }
// module.exports = config;


const tedious = require('tedious');

const config = {
    user: "sa",
    password: "Mahya09354600908",
    server: "localhost",
    port: 1401,
    database: "mohajeratDB",
    options: {
        trustedconnection: true,
        enableArithAbort: true,
        isolationLevel: tedious.ISOLATION_LEVEL.READ_UNCOMMITTED,
        trustServerCertificate: true
    }
};

module.exports = config;