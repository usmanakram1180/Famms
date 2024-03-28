# app/controllers/contacts_controller.rb
class ContactsController < ApplicationController
    def create
      @contact = Contact.new(contact_params)
      if @contact.save
        # Successful submission, handle redirects or responses here
        redirect_to contact_path, notice: 'Your message was successfully submitted!'
      else
        
        render :new
# Failed submission, handle errors or responses here
      end
    end
  
    private
  
      def contact_params
          params.permit(:full_name, :email_address, :subject, :message)
        end
  end
  