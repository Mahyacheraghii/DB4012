var config = require('./dbconfig');
const sql = require('mssql');
//---------------------------------------------------------------------------------

//1
async function getConsultant(id) {
    try {
        let pool = await sql.connect(config);
        let Customer = await pool.request()
            .input('input_parameter', sql.NVarChar, id)
            .query("SELECT * from Consultant where NationalID = @input_parameter");
        return Customer.recordsets;
    } catch (error) {
        console.log(error);
    }
}

//2
async function getCustomer(id) {
    try {
        let pool = await sql.connect(config);
        let Customer = await pool.request()
            .input('input_parameter', sql.NVarChar, id)
            .query("SELECT * from Customer where NationalID = @input_parameter");
        return Customer.recordsets;
    } catch (error) {
        console.log(error);
    }
}

//3
async function getDocument(id) {
    try {
        let pool = await sql.connect(config);
        let Document = await pool.request()
            .input('input_parameter', sql.Int, id)
            .query("SELECT * from Document where DocID = @input_parameter");
        return Document.recordsets;
    } catch (error) {
        console.log(error);
    }
}

//4
async function getDocumentsByCustomerID(id) {
    try {
        let pool = await sql.connect(config);
        let documents = await pool.request()
            .input('id', sql.NVarChar, id)
            .query("SELECT * from Document where CustomerID = @id");
        return documents.recordsets;
    } catch (error) {
        console.log(error);
    }
}

//5
async function getConsultants() {
    try {
        let pool = await sql.connect(config);
        let consultantslist = await pool.request().query("SELECT * FROM Consultant");
        return consultantslist.recordsets;
    }
    catch (error) {
        console.log(error);

    }
}

//6
async function getVisasByStatus(status) {
    try {
        let pool = await sql.connect(config);
        let visas = await pool.request()
            .input('status', sql.NVarChar, status)
            .query("SELECT * from Visa where RequestStatus = @status");
        return visas.recordsets;
    } catch (error) {
        console.log(error);
    }
}

//7
async function getVisasByImmigrationType(immigrationType) {
    try {
        let pool = await sql.connect(config);
        let visas = await pool.request()
            .input('immigrationType', sql.NVarChar, immigrationType)
            .query("SELECT * from Visa where ImmigrationType = @immigrationType");
        return visas.recordsets;
    } catch (error) {
        console.log(error);
    }
}

//8
async function getVisasByCountryID(id) {
    console.log(`Getting visas for country ID: ${id}`);

    try {
        let pool = await sql.connect(config);
        let visas = await pool.request()
            .input('id', sql.Int, id)
            .query("SELECT * from Visa where CustomerID in (SELECT CustomerID from Choose where CountryID = @id)");
        console.log(visas);
        return visas.recordsets;
        // return visas.recordsets[0];
    } catch (error) {
        console.log(error);
    }
}

//9
async function getCustomersByPaymentStatus(paymentStatus) {
    try {
        let pool = await sql.connect(config);
        let customers = await pool.request()
            .input('paymentStatus', sql.NVarChar, paymentStatus)
            .query("SELECT * from Customer where NationalID in (SELECT CustomerID from Cost where PaymentStatus = @paymentStatus)");
        return customers.recordsets;
    } catch (error) {
        console.log(error);
    }
}

//10
async function getCustomersByCountryID(countryID) {
    try {
        let pool = await sql.connect(config);
        let customers = await pool.request()
            .input('countryID', sql.Int, countryID)
            .query("SELECT * from Customer where NationalID in (SELECT CustomerID from Choose where CountryID = @countryID)");
        return customers.recordsets;
    } catch (error) {
        console.log(error);
    }
}

//11
async function getCustomersByConsultantID(consultantID) {
    try {
        let pool = await sql.connect(config);
        let customers = await pool.request()
            .input('consultantID', sql.NVarChar, consultantID)
            .query("SELECT * from Customer where NationalID in (SELECT CustomerID from Counseling where ConsultantID = @consultantID)");
        return customers.recordsets;
    } catch (error) {
        console.log(error);
    }
}

//12
async function getCustomersByImmigrationType(immigrationTypeID) {
    try {
        let pool = await sql.connect(config);
        let customers = await pool.request()
            .input('immigrationTypeID', sql.NVarChar, immigrationTypeID)
            .query("SELECT * from Customer where NationalID in (SELECT CustomerID from Visa where ImmigrationType = @immigrationTypeID)");
        return customers.recordsets;
    } catch (error) {
        console.log(error);
    }
}

module.exports = {
    //1
    getConsultant: getConsultant,
    //2
    getCustomer: getCustomer,
    //3
    getDocument: getDocument,
    //4
    getDocumentsByCustomerID,
    //5
    getConsultants: getConsultants,
    //6
    getVisasByStatus: getVisasByStatus,
    //7
    getVisasByImmigrationType: getVisasByImmigrationType,
    //8
    getVisasByCountryID: getVisasByCountryID,
    //9
    getCustomersByPaymentStatus: getCustomersByPaymentStatus,
    //10
    getCustomersByCountryID:getCustomersByCountryID,
    //11
    getCustomersByConsultantID:getCustomersByConsultantID,
    //13
    getCustomersByImmigrationType:getCustomersByImmigrationType

}