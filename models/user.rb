require 'bcrypt'
class User < ActiveRecord::Base
  before_create :set_default_score

  validates :name, presence: true
  #validates :password, presence: true

  has_many :answers
  has_many :cars  
  has_secure_password

  private
  def set_default_score
    self.score = 0
  end

  public
  def mayor21?
       fecha_nacimiento = self.fecha_nacimiento

    # Calcula la fecha actual
    fecha_actual = Date.today

    # Calcula la edad del usuario en años
    edad = fecha_actual.year - fecha_nacimiento.year

    # Resta un año a la edad si aún no se ha cumplido el día de nacimiento
    edad -= 1 if fecha_actual < fecha_nacimiento + edad.years

    # Retorna true si la edad es mayor o igual a 21, de lo contrario, retorna false
    if edad >= 21 
          true
       else 
          false
    end       

  end

  



end

