from rest_framework import serializers
from .models import Consultant, Customer, Country, Visa, Cost, Document, Marriage, Work, Educational, Tourism, Entrepreneurship, Investment, Counseling, Choose

class ConsultantSerializer(serializers.ModelSerializer):
    class Meta:
        model = Consultant
        fields = ['NationalID', 'FName', 'LName', 'PhoneNumber', 'BirthDate', 'Address', 'RelevantDegree']

class CustomerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Customer
        fields = ['NationalID', 'FName', 'LName', 'PhoneNumber', 'BirthDate', 'Address', 'PassportStatus']

class CountrySerializer(serializers.ModelSerializer):
    class Meta:
        model = Country
        fields = ['CountryID', 'CountryName', 'CLanguage', 'GDP', 'Cpopulation', 'Continent', 'RankedUniversities']

class VisaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Visa
        fields = ['VisaID', 'RequestDate', 'VisaStatus', 'ImmigrationType', 'RequiredDocs', 'Customer']

class CostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cost
        fields = ['CostID', 'PaymentDate', 'PaymentStatus', 'Amount', 'TrackingNumber', 'Customer']

class DocumentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Document
        fields = ['DocID', 'PassportNumber', 'SpecialDisease', 'ScoreOfLanExam', 'LanguageCertificate', 'AmountOfFinancing', 'Clearances', 'Customer']

class MarriageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Marriage
        fields = ['Document', 'MarriageCertificate']

class WorkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Work
        fields = ['Document', 'GPAOfTheLastDegree', 'FieldOfOccupation', 'DurationOfOccupation', 'LastEducationalCertificate', 'SpecialSkills']

class EducationalSerializer(serializers.ModelSerializer):
    class Meta:
        model = Educational
        fields = ['Document', 'SpecialSkills', 'GPAOfTheLastDegree', 'LastEducationalCertificate']

class TourismSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tourism
        fields = ['Document', 'TourismType']

class EntrepreneurshipSerializer(serializers.ModelSerializer):
    class Meta:
        model = Entrepreneurship
        fields = ['Document', 'GPAOfTheLastDegree', 'FieldOfOccupation', 'DurationOfOccupation', 'LastEducationalCertificate', 'SpecialSkills']

class InvestmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Investment
        fields = ['Document', 'AmountOfCapital']

class CounselingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Counseling
        fields = ['Customer', 'Consultant']

class ChooseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Choose
        fields = ['Customer', 'Country']