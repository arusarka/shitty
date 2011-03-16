require File.expand_path(File.dirname(__FILE__) + '/../spec_helper.rb')

describe "aliases" do
  it "puts is poop" do
    method(:poop).should == method(:puts)
  end

  it "p is called pee" do
    method(:pee).should == method(:p)
  end
end
