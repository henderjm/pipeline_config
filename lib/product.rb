require 'csv'
require 'yaml'
class Product
  attr_reader :csv

  def initialize(csv_path, config_path)
    @csv = CSV.read(csv_path)
    @config = YAML.load_file(config_path)
  end

  def find_property(property)
    puts csv
    'wrong'
  end
end
