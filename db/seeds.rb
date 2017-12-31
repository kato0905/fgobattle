require "csv"
  if File.exist?('db/class.csv') == true
    CSV.foreach('db/class.csv').each do |row|
    S_class.find_or_create_by(:class_id => row[0], :name => row[1])
  end
end

require "csv"
  if File.exist?('db/attri.csv') == true
    CSV.foreach('db/attri.csv').each do |row|
    S_class.find_or_create_by(:attri_id => row[0], :name => row[1])
  end
end

require "csv"
  if File.exist?('db/servant.csv') == true
    CSV.foreach('db/servant.csv').each do |row|
    S_class.find_or_create_by(:servant_id => row[0], :rare => row[1], :name => row[2], :class_id => row[3], :attri_id => row[4], :command => row[5], :np_get => row[6])
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
