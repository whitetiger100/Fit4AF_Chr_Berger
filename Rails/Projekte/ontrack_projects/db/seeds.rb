# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create!([{ title: 'Apache Webs', description: 'Erstellen einer Website zur Einrichtung neuer Webs', start_date: '01.07.2016', end_date: '15.07.2016' }, { title: 'Prüfungsvorbereitungen', description: 'Vorbereitung der Abschlussprüfungen', start_date: '01.09.2016', end_date: '26.11.2016' }])