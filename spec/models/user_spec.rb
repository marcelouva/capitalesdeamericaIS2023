require 'sinatra/activerecord'
require_relative '../../models/init.rb'
require 'spec_helper'

describe 'User' do
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



    end
  end

  
end
