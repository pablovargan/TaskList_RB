#ejemplo

class User
  def initialize(name, email)
    @name = name
    @email = email
  end

  # get y set
  attr_accessor :name


end

u = User.new("Pepe", "pepe@ua.es")
puts u.name()