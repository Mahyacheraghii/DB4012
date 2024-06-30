from django.conf.urls import url
from mohajeratApp import views

urlpatterns = [
    url(r'^consultant$', views.consultantApi),
    url(r'^consultant/([0-9]+)$', views.consultantApi),

    url(r'^customer$', views.customerApi),
    url(r'^customer/([0-9]+)$', views.customerApi),

    url(r'^country$', views.countryApi),
    url(r'^country/([0-9]+)$', views.countryApi),

    url(r'^visa$', views.visaApi),
    url(r'^visa/([0-9]+)$', views.visaApi),

    url(r'^cost$', views.costApi),
    url(r'^cost/([0-9]+)$', views.costApi),

    url(r'^document$', views.documentApi),
    url(r'^document/([0-9]+)$', views.documentApi),

    url(r'^marriage$', views.marriageApi),
    url(r'^marriage/([0-9]+)$', views.marriageApi),

    url(r'^work$', views.workApi),
    url(r'^work/([0-9]+)$', views.workApi),

    url(r'^educational$', views.educationalApi),
    url(r'^educational/([0-9]+)$', views.educationalApi),

    url(r'^tourism$', views.tourismApi),
    url(r'^tourism/([0-9]+)$', views.tourismApi),

    url(r'^entrepreneurship$', views.entrepreneurshipApi),
    url(r'^entrepreneurship/([0-9]+)$', views.entrepreneurshipApi),

    url(r'^investment$', views.investmentApi),
    url(r'^investment/([0-9]+)$', views.investmentApi),

    url(r'^counseling$', views.counselingApi),
    url(r'^counseling/([0-9]+)$', views.counselingApi),

    url(r'^choose$', views.chooseApi),
    url(r'^choose/([0-9]+)$', views.chooseApi),
    
    url(r'^customer/([0-9]+)/document$', views.customerDocumentApirequest)
    url(r'^consultants$', views.getAllConsultantsApirequest),
    url(r'^visas/(?P<status>\w+)$', views.getVisasByStatusApirequest),
    
    url(r'^visas/country/(?P<country_id>\d+)$', getVisasByCountryID),
    url(r'^visas/immigration-type/(?P<immigration_type>\w+)$', getVisasByImmigrationType),
    url(r'^customers/country/(?P<country_id>\d+)$', getCustomersByCountryID),
    url(r'^customers/consultant/(?P<consultant_id>\d+)$', getCustomersByConsultantID),
    url(r'^customers/payment-status/(?P<payment_status>\w+)$', getCustomersByPaymentStatus),
    url(r'^customers/immigration_type/(?P<immigration_type>\w+)$', getCustomersByImmigrationType),
]