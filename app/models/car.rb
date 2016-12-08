class Car
  def initialize(make,model,year)
    @make = make
    @model = model
    @year = year
    @speed = 0
    @lights = false
  end

  # To be called in the view
  def info
    @year + " " + @make + " " + @model
  end

  def speed
    @speed
  end

  # Necessary for YAML
  def make= new_make
    @make = new_make
  end

  def model= new_model
    @model = new_model
  end

  def year= new_year
    @year = new_year
  end

  # Necessary for cars to accelerate and brake
  def accelerate
    @speed += 10
  end

  def brake
    @speed -= 7
    if @speed < 0
      @speed = 0
    end
  end

  def lights?
    @lights
  end

  def lights
    @lights = lights? ? false : true
  end
end
