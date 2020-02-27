class Contact
  attr_accessor :firstname, :lastname, :email, :message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend  ActiveModel::Naming
  validates :firstname, :lastname, :email, :message, presence: true
  validates :email, :format => { :with => %r{.+@.+\..+} }, allow_blank: true
end
