class GroupLocations
  def initialize(name, brand, open = true)
    @name = name
    @brand = brand
    @open = open
  end

  # TODO: Remover estes dois métodos e fazer um switch case no brand_name
  def bioritmo?
    @brand == 1
  end

  def smartfit?
    @brand == 2
  end

  def brand_name
    if bioritmo?
      'bioritmo'
    elsif smartfit?
      'smartfit'
    else
      'Marca não cadastrada'
    end
  end

  def open?
    if @open
      'está aberta'
    else
      'está fechada'
    end
  end

  def speak
    puts "A #{@name} é da marca #{brand_name} e #{open?}"
  end
end
