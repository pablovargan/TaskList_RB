class Item
  attr_accessor :nombre, :cantidad
  #Cantidad tiene un parametro por defecto
  def initialize(nombre, cantidad = 1)
    @nombre = nombre
    @cantidad = cantidad
  end

end