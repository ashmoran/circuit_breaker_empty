# Silence debug-level actor shutdown warnings
Celluloid.logger.level = Logger::Severity::INFO

RSpec.configure do |config|
  config.filter_run(focus: true)
  config.run_all_when_everything_filtered = true

  config.expect_with :rspec do |c|
    # Disable the `should` syntax
    c.syntax = :expect
  end
end