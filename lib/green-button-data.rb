require 'sax-machine'
require 'faraday'

require 'green-button-data/core_ext'
require 'green-button-data/configuration'
require 'green-button-data/dst'
require 'green-button-data/enumerations'
require 'green-button-data/enumerations/accumulation'
require 'green-button-data/enumerations/authorization_status'
require 'green-button-data/enumerations/commodity'
require 'green-button-data/enumerations/currency'
require 'green-button-data/enumerations/data_custodian_application_status'
require 'green-button-data/enumerations/data_qualifier'
require 'green-button-data/enumerations/espi_service_status'
require 'green-button-data/enumerations/flow_direction'
require 'green-button-data/enumerations/measurement'
require 'green-button-data/enumerations/phase_code'
require 'green-button-data/enumerations/quality_of_reading'
require 'green-button-data/enumerations/service'
require 'green-button-data/enumerations/third_party_application_status'
require 'green-button-data/enumerations/third_party_application_type'
require 'green-button-data/enumerations/third_party_application_use'
require 'green-button-data/enumerations/time_attribute'
require 'green-button-data/enumerations/time_period_of_interest'
require 'green-button-data/enumerations/unit_multiplier'
require 'green-button-data/enumerations/unit_symbol'
require 'green-button-data/utilities'
require 'green-button-data/parser'
require 'green-button-data/parser/rational_number'
require 'green-button-data/parser/interval'
require 'green-button-data/parser/interval_reading'
require 'green-button-data/parser/interval_block'
require 'green-button-data/parser/authorization'
require 'green-button-data/parser/application_information'
require 'green-button-data/parser/service_category'
require 'green-button-data/parser/local_time_parameters'
require 'green-button-data/parser/reading_type'
require 'green-button-data/parser/usage_point'
require 'green-button-data/parser/content'
require 'green-button-data/parser/entry'
require 'green-button-data/parser/feed'
require 'green-button-data/feed'
require 'green-button-data/relations'
require 'green-button-data/model_collection'
require 'green-button-data/fetchable'
require 'green-button-data/entry'
require 'green-button-data/interval'
require 'green-button-data/interval_reading'
require 'green-button-data/application_information'
require 'green-button-data/authorization'
require 'green-button-data/interval_block'
require 'green-button-data/meter_reading'
require 'green-button-data/usage_point'

module GreenButtonData
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration
  end
end
