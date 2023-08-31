require 'sinatra/activerecord'
require_relative '../../models/init.rb'

describe 'Question' do


  describe 'tres options por pregunta' do
 
    it 'should be valid' do
      q3=Question.new
      q3.options.build(name: "op1")
      q3.options.build(name: "op2")
      q3.options.build(name: "op3")
      expect(q3.valid?).to eq(true)
    end

    it 'no valido' do
      q3=Question.new
      q3.options.build(name: "op1")
      q3.options.build(name: "op2")
        expect(q3.valid?).to eq(false)
    end
  end   

    
end
