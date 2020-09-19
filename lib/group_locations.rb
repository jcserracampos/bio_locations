class GroupLocations
  def initialize(name, brand, open = true)
    @name = name
    @brand = brand
    @open = open
    self.speak
  end

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

group = GroupLocations.new('SP2', 1)
group_2 = GroupLocations.new('PTA', 2, false)
