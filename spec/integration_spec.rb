
describe "Spiral Integrations" do
  let :script do  File.expand_path('../../spiral.rb', __FILE__) end
  let :command do "ruby #{script} " end

  describe "when run without arguments" do
    it "should give a usage message" do
      `#{command}`.should =~ /USAGE/
    end
  end

  describe "when run with a non-square argument" do
    it "should complain that the argument is not valid" do
      `#{command} 11`.should =~ /You must provide an integer that is a perfect square/
    end
    it "should complain that the argument is not valid" do
      `#{command} a`.should =~ /You must provide an integer that is a perfect square/
    end
    it "should complain that the argument is not valid" do
      `#{command} 122`.should =~ /You must provide an integer that is a perfect square/
    end
  end

  describe "with a square argument" do
    it "should provide the matrix as output" do
      `#{command} 4`.should == <<-EOS
4 3
1 2
EOS
    end
  end




end
