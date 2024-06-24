from django.shortcuts import render

# Create your views here.
from rest_framework.response import Response
from rest_framework.views import APIView
from .models import Consultant, Customer, Country, Visa, Cost, Document, Marriage, Work, Educational, Tourism, Entrepreneurship, Investment, Counseling, Choose
from .serializers import ConsultantSerializer, CustomerSerializer, CountrySerializer, VisaSerializer, CostSerializer, DocumentSerializer, MarriageSerializer, WorkSerializer, EducationalSerializer, TourismSerializer, EntrepreneurshipSerializer, InvestmentSerializer, CounselingSerializer, ChooseSerializer

@csrf_exempt
def consultantApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            consultant = Consultant.objects.get(pk=id)
            consultant_serializer=ConsultantSerializer(consultant)
            return JsonResponse(consultant_serializer.data, safe=False)
        else:
            consultants = Consultant.objects.all()
            consultant_serializer=ConsultantSerializer(consultants, many=True)
            return JsonResponse(consultant_serializer.data, safe=False)
    elif request.method=='POST':
        consultant_data=JSONParser().parse(request)
        consultant_serializer=ConsultantSerializer(data=consultant_data)
        if consultant_serializer.is_valid():
            consultant_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")

@csrf_exempt
def customerApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            customer = Customer.objects.get(pk=id)
            customer_serializer=CustomerSerializer(customer)
            return JsonResponse(customer_serializer.data, safe=False)
        else:
            customers = Customer.objects.all()
            customer_serializer=CustomerSerializer(customers, many=True)
            return JsonResponse(customer_serializer.data, safe=False)
    elif request.method=='POST':
        customer_data=JSONParser().parse(request)
        customer_serializer=CustomerSerializer(data=customer_data)
        if customer_serializer.is_valid():
            customer_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")

@csrf_exempt
def countryApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            country = Country.objects.get(pk=id)
            country_serializer=CountrySerializer(country)
            return JsonResponse(country_serializer.data, safe=False)
        else:
            countries = Country.objects.all()
            country_serializer=CountrySerializer(countries, many=True)
            return JsonResponse(country_serializer.data, safe=False)
    elif request.method=='POST':
        country_data=JSONParser().parse(request)
        country_serializer=CountrySerializer(data=country_data)
        if country_serializer.is_valid():
            country_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")

@csrf_exempt
def visaApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            visa = Visa.objects.get(pk=id)
            visa_serializer=VisaSerializer(visa)
            return JsonResponse(visa_serializer.data, safe=False)
        else:
            visas = Visa.objects.all()
            visa_serializer=VisaSerializer(visas, many=True)
            return JsonResponse(visa_serializer.data, safe=False)
    elif request.method=='POST':
        visa_data=JSONParser().parse(request)
        visa_serializer=VisaSerializer(data=visa_data)
        if visa_serializer.is_valid():
            visa_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")

@csrf_exempt
def costApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            cost = Cost.objects.get(pk=id)
            cost_serializer=CostSerializer(cost)
            return JsonResponse(cost_serializer.data, safe=False)
        else:
            costs = Cost.objects.all()
            cost_serializer=CostSerializer(costs, many=True)
            return JsonResponse(cost_serializer.data, safe=False)
    elif request.method=='POST':
        cost_data=JSONParser().parse(request)
        cost_serializer=CostSerializer(data=cost_data)
        if cost_serializer.is_valid():
            cost_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")

@csrf_exempt
def documentApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            document = Document.objects.get(pk=id)
            document_serializer=DocumentSerializer(document)
            return JsonResponse(document_serializer.data, safe=False)
        else:
            documents = Document.objects.all()
            document_serializer=DocumentSerializer(documents, many=True)
            return JsonResponse(document_serializer.data, safe=False)
    elif request.method=='POST':
        document_data=JSONParser().parse(request)
        document_serializer=DocumentSerializer(data=document_data)
        if document_serializer.is_valid():
            document_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")

@csrf_exempt
def marriageApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            marriage = Marriage.objects.get(pk=id)
            marriage_serializer=MarriageSerializer(marriage)
            return JsonResponse(marriage_serializer.data, safe=False)
        else:
            marriages = Marriage.objects.all()
            marriage_serializer=MarriageSerializer(marriages, many=True)
            return JsonResponse(marriage_serializer.data, safe=False)
    elif request.method=='POST':
        marriage_data=JSONParser().parse(request)
        marriage_serializer=MarriageSerializer(data=marriage_data)
        if marriage_serializer.is_valid():
            marriage_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")

@csrf_exempt
def investmentApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            investment = Investment.objects.get(pk=id)
            investment_serializer=InvestmentSerializer(investment)
            return JsonResponse(investment_serializer.data, safe=False)
        else:
            investments = Investment.objects.all()
            investment_serializer=InvestmentSerializer(investments, many=True)
            return JsonResponse(investment_serializer.data, safe=False)
    elif request.method=='POST':
        investment_data=JSONParser().parse(request)
        investment_serializer=InvestmentSerializer(data=investment_data)
        if investment_serializer.is_valid():
            investment_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")

@csrf_exempt
def counselingApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            counseling = Counseling.objects.get(pk=id)
            counseling_serializer=CounselingSerializer(counseling)
            return JsonResponse(counseling_serializer.data, safe=False)
        else:
            counselings = Counseling.objects.all()
            counseling_serializer=CounselingSerializer(counselings, many=True)
            return JsonResponse(counseling_serializer.data, safe=False)
    elif request.method=='POST':
        counseling_data=JSONParser().parse(request)
        counseling_serializer=CounselingSerializer(data=counseling_data)
        if counseling_serializer.is_valid():
            counseling_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")

@csrf_exempt
def chooseApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            choose = Choose.objects.get(pk=id)
            choose_serializer=ChooseSerializer(choose)
            return JsonResponse(choose_serializer.data, safe=False)
        else:
            chooses = Choose.objects.all()
            choose_serializer=ChooseSerializer(chooses, many=True)
            return JsonResponse(choose_serializer.data, safe=False)
    elif request.method=='POST':
        choose_data=JSONParser().parse(request)
        choose_serializer=ChooseSerializer(data=choose_data)
        if choose_serializer.is_valid():
            choose_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")
    
@csrf_exempt
def workApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            work = Work.objects.get(pk=id)
            work_serializer=WorkSerializer(work)
            return JsonResponse(work_serializer.data, safe=False)
        else:
            works = Work.objects.all()
            work_serializer=WorkSerializer(works, many=True)
            return JsonResponse(work_serializer.data, safe=False)
    elif request.method=='POST':
        work_data=JSONParser().parse(request)
        work_serializer=WorkSerializer(data=work_data)
        if work_serializer.is_valid():
            work_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")

@csrf_exempt
def educationalApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            educational = Educational.objects.get(pk=id)
            educational_serializer=EducationalSerializer(educational)
            return JsonResponse(educational_serializer.data, safe=False)
        else:
            educationals = Educational.objects.all()
            educational_serializer=EducationalSerializer(educationals, many=True)
            return JsonResponse(educational_serializer.data, safe=False)
    elif request.method=='POST':
        educational_data=JSONParser().parse(request)
        educational_serializer=EducationalSerializer(data=educational_data)
        if educational_serializer.is_valid():
            educational_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")

@csrf_exempt
def tourismApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            tourism = Tourism.objects.get(pk=id)
            tourism_serializer=TourismSerializer(tourism)
            return JsonResponse(tourism_serializer.data, safe=False)
        else:
            tourisms = Tourism.objects.all()
            tourism_serializer=TourismSerializer(tourisms, many=True)
            return JsonResponse(tourism_serializer.data, safe=False)
    elif request.method=='POST':
        tourism_data=JSONParser().parse(request)
        tourism_serializer=TourismSerializer(data=tourism_data)
        if tourism_serializer.is_valid():
            tourism_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")

@csrf_exempt
def entrepreneurshipApirequest(request, id=None):
    if request.method=='GET':
        if id is not None:
            entrepreneurship = Entrepreneurship.objects.get(pk=id)
            entrepreneurship_serializer=EntrepreneurshipSerializer(entrepreneurship)
            return JsonResponse(entrepreneurship_serializer.data, safe=False)
        else:
            entrepreneurships = Entrepreneurship.objects.all()
            entrepreneurship_serializer=EntrepreneurshipSerializer(entrepreneurships, many=True)
            return JsonResponse(entrepreneurship_serializer.data, safe=False)
    elif request.method=='POST':
        entrepreneurship_data=JSONParser().parse(request)
        entrepreneurship_serializer=EntrepreneurshipSerializer(data=entrepreneurship_data)
        if entrepreneurship_serializer.is_valid():
            entrepreneurship_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add")