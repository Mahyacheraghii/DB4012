class Customer {
    constructor(nationalID, fName, lName, phoneNumber, birthDate, address, passportStatus) {
      this.NationalID = nationalID;
      this.FName = fName;
      this.LName = lName;
      this.PhoneNumber = phoneNumber;
      this.BirthDate = birthDate;
      this.Address = address;
      this.PassportStatus = passportStatus;
    }
  }
  
  class Consultant {
    constructor(nationalID, fName, lName, phoneNumber, birthDate, address, relevantDegree) {
      this.NationalID = nationalID;
      this.FName = fName;
      this.LName = lName;
      this.PhoneNumber = phoneNumber;
      this.BirthDate = birthDate;
      this.Address = address;
      this.RelevantDegree = relevantDegree;
    }
  }
  
  class Country {
    constructor(countryID, countryName, cLanguage, GDP, cPopulation, continent, rankedUniversities) {
      this.CountryID = countryID;
      this.CountryName = countryName;
      this.CLanguage = cLanguage;
      this.GDP = GDP;
      this.CPopulation = cPopulation;
      this.Continent = continent;
      this.RankedUniversities = rankedUniversities;
    }
  }
  
  class Visa {
    constructor(VisaID, requestDate, visaStatus, immigrationType, requiredDocs, customerID) {
      this.VisaID = VisaID; 
      this.RequestDate = requestDate;
      this.VisaStatus = visaStatus;
      this.ImmigrationType = immigrationType;
      this.RequiredDocs = requiredDocs;
      this.CustomerID = customerID;
    }
  }
class Marriage {
    constructor(docID, marriageCertificate) {
      this.DocID = docID;
      this.MarriageCertificate = marriageCertificate;
    }
  }
  
  class Work {
    constructor(docID, gpaOfTheLastDegree, fieldOfOccupation, durationOfOccupation, lastEducationalCertificate, specialSkills) {
      this.DocID = docID;
      this.GPAOfTheLastDegree = gpaOfTheLastDegree;
      this.FieldOfOccupation = fieldOfOccupation;
      this.DurationOfOccupation = durationOfOccupation;
      this.LastEducationalCertificate = lastEducationalCertificate;
      this.SpecialSkills = specialSkills;
    }
  }
  
  class Educational {
    constructor(docID, specialSkills, gpaOfTheLastDegree, lastEducationalCertificate) {
      this.DocID = docID;
      this.SpecialSkills = specialSkills;
      this.GPAOfTheLastDegree = gpaOfTheLastDegree;
      this.LastEducationalCertificate = lastEducationalCertificate;
    }
  }
  
  class Turism {
    constructor(docID, turismType) {
      this.DocID = docID;
      this.TurismType = turismType;
    }
  }
  
  class Entrepreneurship {
    constructor(docID, gpaOfTheLastDegree, fieldOfOccupation, durationOfOccupation, lastEducationalCertificate, specialSkills) {
      this.DocID = docID;
      this.GPAOfTheLastDegree = gpaOfTheLastDegree;
      this.FieldOfOccupation = fieldOfOccupation;
      this.DurationOfOccupation = durationOfOccupation;
      this.LastEducationalCertificate = lastEducationalCertificate;
      this.SpecialSkills = specialSkills;
    }
  }
  
  class Investment {
    constructor(docID, amountOfCapital) {
      this.DocID = docID;
      this.AmountOfCapital = amountOfCapital;
    }
  }
  
  class Counseling {
    constructor(customerID, consultantID) {
      this.CustomerID = customerID;
      this.ConsultantID = consultantID;
    }
  }
  
  class Choose {
    constructor(customerID, countryID) {
      this.CustomerID = customerID;
      this.CountryID = countryID;
    }
  }

  class Cost {
    constructor(CostID, paymentDate, paymentStatus, amount, trackingNumber, customerID) {
      this.CostID = CostID;
      this.PaymentDate = paymentDate;
      this.PaymentStatus = paymentStatus;
      this.Amount = amount;
      this.TrackingNumber = trackingNumber;
      this.CustomerID = customerID;
    }
  }

module.exports = Customer; 
module.exports = Consultant;
module.exports = Country;  
module.exports = Marriage; 
module.exports = Work;
module.exports = Educational; 
module.exports = Turism; 
module.exports = Entrepreneurship;
module.exports = Investment; 
module.exports = Turism; 
module.exports = Counseling;
module.exports = Choose; 
module.exports = Visa; 
module.exports = Cost;