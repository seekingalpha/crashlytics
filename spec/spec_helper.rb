$:.unshift File.expand_path("../../lib/crashlytics", __FILE__)

require 'bundler/setup'
require 'hpricot'
require 'timecop'
require 'crashlytics'
