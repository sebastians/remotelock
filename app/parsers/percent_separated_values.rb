require 'csv'

module Parsers
  class PercentSeparatedValues < ::CSV
    CUSTOM_OPTIONS = {
      col_sep: "%",
      strip: true,
      headers: true,
      header_converters: :symbol
    }

    def self.parse(string, **options)
      super(string, **options.merge(CUSTOM_OPTIONS))
    end
  end
end
