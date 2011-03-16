require File.expand_path(File.dirname(__FILE__) + '/../spec_helper.rb')
require 'shitty/version'

describe "version" do
  it "should return the proper version" do
    Shitty::VERSION.should == '0.0.1'
  end
end