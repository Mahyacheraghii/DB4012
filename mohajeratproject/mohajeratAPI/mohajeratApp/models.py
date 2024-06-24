from django.db import models

# Create your models here.
from django.db import models

class Consultant(models.Model):
    NationalID = models.CharField(max_length=10, primary_key=True)
    FName = models.CharField(max_length=100)
    LName = models.CharField(max_length=100)
    PhoneNumber = models.CharField(max_length=11)
    BirthDate = models.DateField()
    Address = models.CharField(max_length=500)
    RelevantDegree = models.CharField(max_length=50)

class Customer(models.Model):
    NationalID = models.CharField(max_length=10, primary_key=True)
    FName = models.CharField(max_length=100)
    LName = models.CharField(max_length=100)
    PhoneNumber = models.CharField(max_length=11)
    BirthDate = models.DateField()
    Address = models.CharField(max_length=500)
    PassportStatus = models.CharField(max_length=50)

class Country(models.Model):
    CountryID = models.AutoField(primary_key=True)
    CountryName = models.CharField(max_length=100)
    CLanguage = models.CharField(max_length=100)
    GDP = models.FloatField()
    Cpopulation = models.IntegerField()
    Continent = models.CharField(max_length=100)
    RankedUniversities = models.IntegerField()

class Visa(models.Model):
    VisaID = models.AutoField(primary_key=True)
    RequestDate = models.DateField()
    VisaStatus = models.CharField(max_length=50)
    ImmigrationType = models.CharField(max_length=100)
    RequiredDocs = models.CharField(max_length=50)
    Customer = models.ForeignKey(Customer, on_delete=models.CASCADE)

class Cost(models.Model):
    CostID = models.AutoField(primary_key=True)
    PaymentDate = models.DateField()
    PaymentStatus = models.CharField(max_length=50)
    Amount = models.IntegerField()
    TrackingNumber = models.IntegerField()
    Customer = models.ForeignKey(Customer, on_delete=models.CASCADE)

class Document(models.Model):
    DocID = models.AutoField(primary_key=True)
    PassportNumber = models.CharField(max_length=9)
    SpecialDisease = models.CharField(max_length=50)
    ScoreOfLanExam = models.FloatField()
    LanguageCertificate = models.CharField(max_length=50)
    AmountOfFinancing = models.FloatField()
    Clearances = models.CharField(max_length=50)
    Customer = models.ForeignKey(Customer, on_delete=models.CASCADE)

class Marriage(models.Model):
    Document = models.OneToOneField(Document, on_delete=models.CASCADE, primary_key=True)
    MarriageCertificate = models.CharField(max_length=50)

class Work(models.Model):
    Document = models.OneToOneField(Document, on_delete=models.CASCADE, primary_key=True)
    GPAOfTheLastDegree = models.CharField(max_length=50)
    FieldOfOccupation = models.CharField(max_length=50)
    DurationOfOccupation = models.CharField(max_length=100)
    LastEducationalCertificate = models.CharField(max_length=50)
    SpecialSkills = models.CharField(max_length=50)

class Educational(models.Model):
    Document = models.OneToOneField(Document, on_delete=models.CASCADE, primary_key=True)
    SpecialSkills = models.CharField(max_length=255)
    GPAOfTheLastDegree = models.FloatField()
    LastEducationalCertificate = models.CharField(max_length=50)

class Tourism(models.Model):
    Document = models.OneToOneField(Document, on_delete=models.CASCADE, primary_key=True)
    TourismType = models.CharField(max_length=150)

class Entrepreneurship(models.Model):
    Document = models.OneToOneField(Document, on_delete=models.CASCADE, primary_key=True)
    GPAOfTheLastDegree = models.FloatField()
    FieldOfOccupation = models.CharField(max_length=150)
    DurationOfOccupation = models.CharField(max_length=100)
    LastEducationalCertificate = models.CharField(max_length=50)
    SpecialSkills = models.CharField(max_length=50) 

class Investment(models.Model):
    Document = models.OneToOneField(Document, on_delete=models.CASCADE, primary_key=True)
    AmountOfCapital = models.FloatField()

class Counseling(models.Model):
    Customer = models.ForeignKey(Customer, on_delete=models.CASCADE) 
    Consultant = models.ForeignKey(Consultant, on_delete=models.CASCADE)

class Choose(models.Model):
    Customer = models.ForeignKey(Customer, on_delete=models.CASCADE) 
    Country = models.ForeignKey(Country, on_delete=models.CASCADE)