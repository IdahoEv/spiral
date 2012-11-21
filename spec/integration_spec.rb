
describe "Spiral Integrations" do
  let :script do  File.expand_path('../../spiral.rb', __FILE__) end
  let :command do "ruby #{script} " end

  describe "when run without arguments" do

    it "should give a usage message" do
      `#{command}`.should =~ /USAGE/
    end
  end


end
