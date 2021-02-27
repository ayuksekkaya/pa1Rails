require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

instructor_json = File.read('instructor.json')
instructor_hash = JSON.parse(instructor_json)

course_json = File.read("course.json")
course_hash = JSON.parse(course_json)

subject_json = File.read("subject.json")
subject_hash = JSON.parse(subject_json)


instructor_array = []
columns_ins = [:id_instructor, :first, :last, :email]

course_array = []
columns_course = [:id_course, :name, :code, :term]

subject_array = []
columns_sub = [:name, :abbreviation]

instructor_hash.each do |row|
    instructor_row = {id_instructor: row["id"], first: row["first"], last: row["last"], email: row["email"]}
    instructor_array.push(instructor_row)
end

course_hash.each do |row|
    course_row = {id_course: row["id"], name: row["name"], code: row["code"], term: row["term"]}
    course_array.push(course_row)
end

subject_hash.each do |row|
    subject_row = {name: row["name"], abbreviation: row["abbreviation"]}
    subject_array.push(subject_row)
end



Instructor.import columns_ins, instructor_array, validate: false
Course.import columns_course, course_array, validate: false
Subject.import columns_sub, subject_array, validate: false

