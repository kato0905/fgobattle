require "csv"
  if File.exist?('db/class.csv') == true
    CSV.foreach('db/class.csv').each do |row|
    Sclass.create(class_id: row[0], name: row[1])
  end
end

require "csv"
  if File.exist?('db/attri.csv') == true
    CSV.foreach('db/attri.csv').each do |row|
    Attri.create(attri_id: row[0], name: row[1])
  end
end

=begin
csv_text = File.read('db/servant.csv', encoding: 'utf-8')
csv_text = csv_text.gsub /^$\n/, ''
i = 0
@csv = CSV.parse(csv_text, headers: true, skip_blanks: true, quote_char: 'quote_char', col_sep: 'splitter')
=end
require "csv"
  if File.exist?('db/servant.csv') == true
    CSV.foreach('db/servant.csv').each do |row|
    Servant.create!(servant_id: row[0], rare: row[1], name: row[2], class_id: row[3], attri_id: row[4], command: row[5], np_get: row[6])
  end
end
require "csv"
  if File.exist?('db/class_skill.csv') == true
    CSV.foreach('db/class_skill.csv').each do |row|
    Classskill.create!(:servant_id => row[0], :name => row[1], :explain => row[2], :icon_id => row[3])
  end
end
require "csv"
  if File.exist?('db/np_get.csv') == true
    CSV.foreach('db/np_get.csv').each do |row|
    Npget.create!(:servant_id => row[0], :a1 => row[1], :a2 => row[2], :a2p => row[3], :a3 => row[4], :a3p => row[5], :q1 => row[6], :q2 => row[7], :q2p => row[8], :q3 => row[9], :q3p => row[10], :ex => row[11], :exp => row[12], :bp => row[13], :np => row[14])
  end
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
