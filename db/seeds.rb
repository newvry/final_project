# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all

course_list = [
  {"title" => "Entry Level", "description" => "All the tools you need to create a professional web presence along with training from our guide support team to help you design quality tour offerings."},
  {"title" => "Medium Level", "description" => "Through our multiple online marketing channels (social, paid advertising and editorial), we make it easy for travelers to find your tours."},
  {"title" => "Advanced Level", "description" => "We promptly handle all customer payments to you through our credit card processing system. Our sophisticated calendar system lets you control your work availability."}
]


course_list.each do |course|
  Course.create( :title => course["title"], :description => course["description"] )
end

Lesson.destroy_all

lesson_list = [
  {"title" => "Basic guilding and understanding customers", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Entry Level").id},
  {"title" => "Communication and caring skills in the journey", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Entry Level").id},
  {"title" => "Travel Problem Solving and Response", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Entry Level").id},
  {"title" => "Histroy", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Medium Level").id},
  {"title" => "Food", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Medium Level").id},
  {"title" => "Architecture", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Medium Level").id},
  {"title" => "Theme browsing", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Medium Level").id},
  {"title" => "Life planning", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Advanced Level").id},
  {"title" => "Lecture", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Advanced Level").id},
  {"title" => "Creative application", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Advanced Level").id}
]

lesson_list.each do |lesson|
  Lesson.create( :title => lesson["title"], :description => lesson["description"], :course_id => lesson["course_id"] )
end

Unit.destroy_all

unit_list = [
  {"title" => "Pingxi", "description" => "Pingxi District is the Republic of China New North City under the jurisdiction of a municipal area, the territory of the mountain, the new population of the city of the least population, the population has less than five thousand people, the annual Lunar New Year after the day is the most well known One of the important activities.", "lesson_id" => Lesson.find_by(title: "Basic guilding and understanding customers").id, "video" => "https://www.youtube.com/embed/UuWO1ZyJR6o" },
  {"title" => "Monga", "description" => "Monga for the birthplace of Taipei City, was also the Taiwanese indigenous people gathered together, the oldest city in the 'shade hat kitchen,' the site 'Daxi mouth', now the Guiyang Street and the junction of Henan. Pingpu people ship and Han Chinese trade, because the boat for the Bangka, and was referred to here as Taiwanese 'Monga'", "lesson_id" => Lesson.find_by(title: "Basic guilding and understanding customers").id, "video" => "https://www.youtube.com/embed/Stj-mGv9nHI" },
  {"title" => "Keelong landmarks", "description" => "Keelung City is one of the three cities in the real jurisdiction of the Republic of China. It is located in the northeastern part of the island of Taiwan. The ancient name 'cages' is famous for its natural harbor in Sham Shui Po, the most northern city in Taiwan. Is the primary shipping hub of North Taiwan, and thus 'Taiwan head' and 'Taiwan North entrance' said", "lesson_id" => Lesson.find_by(title: "Basic guilding and understanding customers").id, "video" => "https://www.youtube.com/embed/39EOBVsUQXI"  }
]


unit_list.each do |unit|
  Unit.create( :title => unit["title"], :description => unit["description"], :lesson_id => unit["lesson_id"], :video => unit["video"] )
end
