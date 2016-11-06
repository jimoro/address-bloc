class Entry
  #class = methods + data
  # These must be accessors since we mutate them

  #

  attr_accessor :name, :phone_number, :email
  # #
  # def name
  #   @name
  # end


  # def name
  # end
  #
  # def name=(value)
  #   @name = value
  # end

  def initialize(name, phone_number, email)
    @name = name
    @phone_number = phone_number
    @email = email
  end

  def to_s
    "Name: #{name}\nPhone Number: #{phone_number}\nEmail: #{email}"
  end

  def to_name_and_email
    name + " " + email
  end

end
