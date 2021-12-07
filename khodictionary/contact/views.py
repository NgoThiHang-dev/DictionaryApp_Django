from django.shortcuts import render
from .models import Contact
# Create your views here.
def contact(request):
	if request.method == "POST":
		contact=Contact()
		name = request.POST['name']
		email = request.POST['email']
		subject = request.POST['subject']
		contact.name=name
		contact.email=email
		contact.subject= subject
		contact.save()
		return render(request, 'contact/kq.html')
	return render(request, 'contact/contact.html')