require 'webmachine/test'

# Silence debug-level actor shutdown warnings
Celluloid.logger.level = Logger::Severity::INFO

RSpec.configure do |config|
  config.filter_run(focus: true)
  config.run_all_when_everything_filtered = true

  config.expect_with :rspec do |c|
    # Disable the `should` syntax
    c.syntax = :expect
  end

  # https://github.com/celluloid/celluloid/wiki/Gotchas#rspec-magic
  # Note you MUST set `async: true` on an example group that uses a
  # Celluloid actor or the examples will fail due to scope checks that
  # RSpec makes (probably a good thing, actually)
  config.before(:each, async: true) do |example|
    Celluloid.shutdown
    Celluloid.boot
  end
end