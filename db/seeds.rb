# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "master_importer/csv_importer"

# Master Datas
[M::City, M::District, M::Prefecture].each do |model|
    MasterImporter::CSVImporter.new(model).execute
end
PASSWORD = "12345678"
Admin.destroy_all
Admin.create! name: "admin", email: "admin@admin.com", password: PASSWORD,
    password_confirmation: PASSWORD