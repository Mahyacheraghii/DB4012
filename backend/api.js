var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var cors = require('cors');
var router = express.Router();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());
app.use('/api', router);


var port = process.env.PORT || 8090;
app.listen(port);
console.log('API is running at ' + port);


router.use((request, response, next) => {
    console.log('middleware');
    next();
})
var Db = require("./dboperations");
//---------------------------------------------------------------------------------

//1
router.route('/consultant/:id').get((request, response) => {
    dboperations.getConsultant(request.params.id).then(result => {
        response.json(result[0]);
    })
})

//2
const dboperations = require("./dboperations");
router.route('/customer/:id').get((request, response) => {
    dboperations.getCustomer(request.params.id).then(result => {
        response.json(result[0]);
    })
})

//3
router.route('/document/:id').get((request, response) => {
    dboperations.getDocument(request.params.id).then(result => {
        response.json(result[0]);
    })
})

//4
router.route('/customer/:id/documents').get((request, response) => {
    dboperations.getDocumentsByCustomerID(request.params.id).then(result => {
        response.json(result[0]);
    })
})


//5
var consultant = require('./customer');
router.route('/consultants').get((request, response) => {
    dboperations.getConsultants().then(result => {
        response.json(result[0]);
    })
})

//6
router.route('/visas/status/:status').get((request, response) => {
    dboperations.getVisasByStatus(request.params.status).then(result => {
        response.json(result[0]);
    })
})

// 7
router.route('/visas/immigrationType/:immigrationType').get((request, response) => {
    dboperations.getVisasByImmigrationType(request.params.immigrationType).then(result => {
        response.json(result[0]);
    })
})

//8
router.route('/visas/country/:countryID').get((request, response) => {
    dboperations.getVisasByCountryID(request.params.countryID).then(result => {
        response.json(result[0]);
    })
})

//9
router.route('/customers/paymentStatus/:paymentStatus').get((request, response) => {
    dboperations.getCustomersByPaymentStatus(request.params.paymentStatus).then(result => {
        response.json(result[0]);
    })
})

//10
router.route('/customers/country/:id').get((request, response) => {
  dboperations.getCustomersByCountryID(request.params.id).then(result => {
    response.json(result[0]);
  })
})

//11
router.route('/customers/consultant/:id').get((request, response) => {
  dboperations.getCustomersByConsultantID(request.params.id).then(result => {
    response.json(result[0]);
  })
})

//12
router.route('/customers/immigrationType/:immigrationType').get((request, response) => {
  dboperations.getCustomersByImmigrationType(request.params.immigrationType).then(result => {
    response.json(result[0]);
  })
})