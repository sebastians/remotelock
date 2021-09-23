require 'csv'

class PeopleParser
  SUPPORTED_FORMATS = {
    dollar_format: { separator: "$" },
    percent_format: { separator: "%" }
  }

  def self.parse(string, format:, **options)
    custom_parse_options = {
      col_sep: SUPPORTED_FORMATS[format][:separator],
      strip: true,
      headers: true,
      header_converters: :symbol
    }

    CSV.parse(string, **options.merge(custom_parse_options))
  end
end
