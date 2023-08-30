require 'sinatra/activerecord'
require_relative '../../models/init.rb'
require 'spec_helper'

describe 'User' do

    before do
      @user = User.new(id:9090,name:'Jc',password:'asfds',fecha_nacimiento:Date.new(1992,7,7))
      @user.save
    end
  
    #User.create(name:'user2')
    #User.create(name:'user3')
    # Crea otros registros según tus necesidades
#  end

  # Eliminar registros de la base de datos después de las pruebas
  after do
    # Elimina registros de usuarios directamente en la base de datos
   # User.where(name: 'Usuario de prueba 1').destroy_all
      User.where(id:9090).destroy_all
    # Elimina otros registros según tus necesidades
  end
  




  describe 'mayor de edad' do
 
    it 'should be valid' do
      u = User.new(id:1122,name:'Jc',password:'asfds',fecha_nacimiento:Date.new(1992,7,7))
      expect(u.mayor21?).to eq(true)
    end
  end   

  describe 'valid' do
    describe 'when there is no name' do
      it 'should be invalid' do
        

        u = User.new
        expect(u.valid?).to eq(false)
      end
      it 'should be invalid 2' do
        u = User.new(id:232,name:'John',password:'asfds')
        expect(u.valid?).to eq(true)
      end
      it 'should be invalid 3' do
        u = User.new(id:22,name:'JJ',password:'111111asfds')
        expect(u.valid?).to eq(true)
      end
      it 'should be invalid 4' do
        u = User.new(id:92, name:'JJwww',password:'111')
        expect(u.valid?).to eq(true)
      end

      it 'se busca un valor ' do
          u = User.find_by(id: 9090)
          expect(u).to_not be_nil
          expect(u.valid?).to eq(true)
      end

    end
  end


  after do
    @user.destroy # Borrar el usuario después de cada prueba
  end
  
end
