  
require "spec_helper"
require 'pry'

describe "Artist" do

  describe "#new" do 
    it "initializes with a name and an empty collection of songs" do
      taylor_swift = Artist.new("Taylor Swift")
      expect{Artist.new("Beyonce")}.to_not raise_error
      expect(taylor_swift.instance_variable_get(:@songs)).to eq([])
    end
  end

  describe "#name" do 
    it "has a name" do 
      jay_z = Artist.new("Jay-Z")
      
      expect(jay_z.name).to eq("Jay-Z")
    end
  end
