require_relative "./happy_plastics/version"
require_relative "./happy_plastics/cli"
require_relative "./happy_plastics/plastic"
require_relative "./happy_plastics/scraper"

require "pry"
require "nokogiri"
require "open-uri"
require "colorize"

module HappyPlastics
  class Error < StandardError; end
  # Your code goes here...
end
