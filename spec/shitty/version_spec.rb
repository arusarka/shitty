require File.expand_path(File.dirname(__FILE__) + '/../spec_helper.rb')
require 'shitty/version'

describe "version" do
  it "be correct" do
    Shitty::VERSION.should == '0.0.2'
  end
end