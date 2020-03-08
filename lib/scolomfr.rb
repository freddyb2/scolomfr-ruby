require 'nokogiri'

class Scolomfr
  class << self
    def is_scolomfr_notice_valid?(filepath)
      schema_validation_errors(filepath).empty?
    end

    private

    SCHEMA_SCOLOM_FR = 'assets/scolomfr-schemas-3.2.1/scolomfr.xsd'

    # Returns an array of Nokogiri::XML::SyntaxError
    def schema_validation_errors(filepath)
      Nokogiri::XML::Schema(File.open(SCHEMA_SCOLOM_FR)).validate(Nokogiri::XML(File.read(filepath)))
    end
  end
end
