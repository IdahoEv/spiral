Dir.glob(File.join(File.dirname(__FILE__), "./support/**/*.rb")).each {|f| require_relative f}

RSpec::configure do |rspec|
  # ... do nothing yet ...
end
