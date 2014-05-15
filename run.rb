require 'hpricot'
require 'pry'
require_relative 'lib/crashlytics'

# Usage:
#
# ruby run.rb USER PASS 

Crashlytics.run *ARGV
