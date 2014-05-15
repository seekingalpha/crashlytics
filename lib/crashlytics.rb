module Crashlytics 
  def self.run email, password
    Runner.new(email, password).run
  end
end

require_relative 'crashlytics/parser'
require_relative 'crashlytics/runner'
require_relative 'crashlytics/crawler'
