class ContactsController < ApplicationController
  # def persisted?
  #   false
  # end

  # def initialize(attributes = {})
  #   attributes.each do |name, value|
  #     send("#{name}=", value)
  #   end
  # end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      Mailer.contact_form(@contact).deliver
      redirect_to root_path, flash: {success: t(:"create.message_has_been_sent")}
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:prenom, :nom, :email, :message)
  end
end
