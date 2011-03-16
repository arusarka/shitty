require File.expand_path(File.dirname(__FILE__) + '/../spec_helper.rb')

describe "aliases" do
  context "in Kernel module" do
    it "for puts is poop" do
      method(:poop).should == method(:puts)
    end

    it "for p is pee" do
      method(:pee).should == method(:p)
    end
  end

  context "in IO class" do
    it "for puts is poop" do
      class DummyIO < IO
        def initialize; end # for test only, to get rid of arguments
      end
      io = DummyIO.new

      io.method(:poop).should == io.method(:puts)
    end
  end

  context "in Enumerable module" do
    it "for inject is fuck" do
      class DummyClass
        include Enumerable
        def each; end
      end

      obj = DummyClass.new
      obj.method(:fuck).should == obj.method(:inject)
    end
  end
end
