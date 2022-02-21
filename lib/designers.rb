# frozen_string_literal: true

require_relative "designers/version"

require_relative "designers/cli"
require_relative "designers/designerdescription"
require_relative "designers/scraper"
require_relative "designers/upcomingdesigners"

require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'
require 'colorized_string'
#require 'watir'
#require 'webdrivers'


module Designers
  class Error < StandardError; end
  # Your code goes here...
end
