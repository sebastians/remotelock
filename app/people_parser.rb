require 'csv'

class PeopleParser < CSV
  SUPPORTED_FORMATS = {
    dollar_format: { separator: "$" },
    percent_format: { separator: "%" }
  }

  def self.parse(string, **options)
    custom_parse_options = {
      col_sep: SUPPORTED_FORMATS[options.delete(:format)][:separator],
      strip: true,
      headers: true,
      header_converters: :symbol
    }

    super(string, **options.merge(custom_parse_options))
  end
end
