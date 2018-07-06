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
    Servant.create!(servant_id: row[0], rare: row[1], name: row[2], class_id: row[3], attri_id: row[4], command: row[5], np_get: row[6], Hp: row[7], Atk: row[8], HitA: row[9], HitB: row[10], HitQ: row[11], HitEX: row[12], HitNP: row[13])
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
require "csv"
  if File.exist?('db/nps.csv') == true
    CSV.foreach('db/nps.csv').each do |row|
    Np.create!(:servant_id => row[0], :name => row[1], :rank => row[2], :nptype => row[3], :command => row[4], :explain1 => row[5], :data11 => row[6], :data12 => row[7], :data13 => row[8], :data14 => row[9], :data15 => row[10], :explain2 => row[11], :data21 => row[12], :data22 => row[13], :data23 => row[14], :data24 => row[15], :data25 => row[16], :explain3 => row[17], :data3 => row[18], :Type => row[19], :Atk => row[20])
  end
end
require "csv"
  if File.exist?('db/skills.csv') == true
    CSV.foreach('db/skills.csv').each do |row|
    Skill.create!(:servant_id => row[0], :name => row[1], :ct => row[2], :explain => row[3], :d1 => row[4], :d2 => row[5], :d3 => row[6], :d4 => row[7], :d5 => row[8], :d6 => row[9], :d7 => row[10], :d8 => row[11], :d9 => row[12], :d10 => row[13])
  end
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
