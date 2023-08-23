require_relative '../server' 
require_relative '../models/user' 
require_relative '../models/question' 
require_relative '../models/option' 

america = [
    ["Buenos Aires","La Plata", "Resistencia","Córdoba", "La Rioja"],
    ["Catamarca", "San Fernando del Valle de Catamarca","La Plata", "La Rioja"],
    ["Chaco", "Resistencia", "Corrientes","Viedma","Santa Fe"],
    ["Chubut", "Rawson","Santa Fe","Corrientes","Cordoba"],
    ["Córdoba", "Córdoba", "Santa Fe","San Juan","Resistencia"],
    ["Corrientes", "Corrientes", "Resistencia","Posadas","Formosa"],
    ["Entre Ríos", "Paraná", "Santa Luis", "Santa Fe", "Córdoba"],
    ["Formosa", "Formosa", "Resistencia","Salta","Posadas"],
    ["Jujuy", "San Salvador de Jujuy", "Salta","Córdoba","San Juan"],
    ["La Pampa", "Santa Rosa", "Salta","La Plata", "Resistencia"],
    ["La Rioja", "La Rioja", "San Juan","La Plata", "Resistencia"],
    ["Mendoza", "Mendoza", "San Juan","Viedma","La Plata"],
    ["Misiones", "Posadas", "Corrientes","Entre Ríos","San Luis"],
    ["Neuquén", "Neuquén", "Río Negro", "Santa Fe", "Córdoba"],
    ["Río Negro", "Viedma", "Neuquén","La Plata","Córdoba"],
    ["Salta", "Salta", "Resistencia","La Plata", "San Juan"],
    ["San Juan", "San Juan", "Mendoza","La Plata","Córdoba"],
    ["San Luis", "San Luis", "Córdoba","San Juan","Resistencia"],
    ["Santa Cruz", "Río Gallegos", "Salta", "Resistencia","Formosa"],
    ["Santa Fe", "Santa Fe", "Córdoba", "Rosario","La Plata"],
    ["Santiago del Estero", "Santiago del Estero", "Catamarca","Resistencia","Formosa"],
    ["Tierra del Fuego","Ushuaia", "Santa Cruz","San Juan", "Resistencia"],
    ["Tucumán", "San Miguel de Tucumán", "Santiago del Estero","San Luis", "San Juan"]
  ]
  
  def recorrer_arreglo(america)
    cont=1000
    q_id,op1_id,op2_id,op3_id,op4_id= 0,0,0,0,0
    america.each do |elemento|
      q_id=cont 
      cont += 1
      op1_id=cont
      cont += 1
      op2_id=cont
      cont += 1
      op3_id=cont
      cont += 1
      op4_id=cont
      puts "Question.create(name: #{elemento[0]}, option_id: #{op1_id}, question_id: #{q_id})"
      p=Question.new(name:elemento[0], option_id: op1_id, question_id: q_id)
      puts "Option.create(option_id: #{op1_id} , question_id: #{q_id} ,name:#{elemento[1]})"
      opcion1=Option.new(option_id: op1_id , question_id: q_id ,name:elemento[1])
      puts "Option.create(option_id: #{op2_id} , question_id: #{q_id} ,name:#{elemento[2]})"
      opcion2=Option.new(option_id: op2_id , question_id: q_id ,name:elemento[2])
      puts "Option.create(option_id: #{op3_id} , question_id: #{q_id} ,name:#{elemento[3]})"
      opcion3=Option.new(option_id: op3_id , question_id: q_id ,name:elemento[3])

      puts "Option.create(option_id: #{op4_id} , question_id: #{q_id} ,name:#{elemento[4]})"
      opcion4=Option.new(option_id: op4_id , question_id:q_id ,name:elemento[4])
      p.option=opcion1
      p.options.append(opcion1)
      p.options.append(opcion4)
      p.options.append(opcion2)
      p.options.append(opcion3)
      p.save
    end
  end
  
  
  recorrer_arreglo(america)



puts 'Base de datos inicializada con datos de ejemplo.'