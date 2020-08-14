require 'bundler' # rensembler les gem qu'il exist
require_relative 'lib/scrapping' # lie au fichier scrapping.rb

Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)

# cree un nouvelle objet de class Scrapper
database = Scrapper.new
database.show
database.save_to_JSON
# database.save_to_spreadsheet
databaseb.save_to_csv
