# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s1 = Student.new(first_name: 'bob', last_name: 'smith')
s2 = Student.new(first_name: 'john', last_name: 'doe')
s3 = Student.new(first_name: 'phil', last_name: 'campbell')

sc1 = SchoolClass.new(title: 'Science 101', room_number: 200)
sc1 = SchoolClass.new(title: 'Dinosaurs', room_number: 500)
