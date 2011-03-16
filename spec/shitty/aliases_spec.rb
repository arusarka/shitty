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
      fd = IO.sysopen(File.expand_path(File.dirname(__FILE__) + '/test_file'), 'w')
      io = IO.new(fd, 'w')

      io.method(:poop).should == io.method(:puts)

      io.close
      File.delete File.expand_path(File.dirname(__FILE__) + '/test_file')
    end
  end
end
