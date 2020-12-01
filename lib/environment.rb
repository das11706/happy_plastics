require_relative "./happy_plastics/version"
require_relative "./happy_plastics/cli"
require_relative "./happy_plastics/plastic"
require_relative "./happy_plastics/scraper"
require_relative "./happy_plastics/fact"

require "pry"
require "nokogiri"
require "open-uri"
require "colorize"
# require 'colorize', '~> 0.8.1'

module HappyPlastics
  class Error < StandardError; end
  # Your code goes here...
end
