# URLize Filter
# Converts a string to lowercase and replaces spaces with underscores
# Not intended for general purpose, it just meets my requirements.

module Jekyll
  module UrlizeFilter
    def urlize(str)
      str.downcase.gsub(/\s/, '_')
    end
  end
end

Liquid::Template.register_filter(Jekyll::UrlizeFilter)