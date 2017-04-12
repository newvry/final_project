# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all

course_list = [
  {"title" => "初級", "description" => "第一關"},
  {"title" => "中級", "description" => "第二關"},
  {"title" => "高級", "description" => "第三關"}
]


course_list.each do |course|
  Course.create( :title => course["title"], :description => course["description"] )
end


lesson_list = [
  {"title" => "導覽簡介與認識旅客", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.first.id},
  {"title" => "旅程中的溝通與關懷技巧", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.first.id},
  {"title" => "旅遊常見問題解決與應對", "description" => "", "course_id" => Course.first.id},
  {"title" => "歷史", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "中級").id},
  {"title" => "飲食", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "中級").id},
  {"title" => "建築", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "中級").id},
  {"title" => "主題式瀏覽", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "中級").id},
  {"title" => "生活策展學", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.last.id},
  {"title" => "演講學", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.last.id},
  {"title" => "創作應用", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.last.id}
]

lesson_list.each do |lesson|
  Lesson.create( :title => lesson["title"], :description => lesson["description"], :course_id => lesson["course_id"] )
end

