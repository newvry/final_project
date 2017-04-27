# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all

course_list = [
  {"title" => "Entry Level", "description" => "第一關"},
  {"title" => "Medium Level", "description" => "第二關"},
  {"title" => "Advanced Level", "description" => "第三關"}
]


course_list.each do |course|
  Course.create( :title => course["title"], :description => course["description"] )
end

Lesson.destroy_all

lesson_list = [
  {"title" => "導覽簡介與認識旅客", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Entry Level").id},
  {"title" => "旅程中的溝通與關懷技巧", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Entry Level").id},
  {"title" => "旅遊常見問題解決與應對", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Entry Level").id},
  {"title" => "歷史", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Medium Level").id},
  {"title" => "飲食", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Medium Level").id},
  {"title" => "建築", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Medium Level").id},
  {"title" => "主題式瀏覽", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Medium Level").id},
  {"title" => "生活策展學", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Advanced Level").id},
  {"title" => "演講學", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Advanced Level").id},
  {"title" => "創作應用", "description" => "Lorem ipsum dolor sit amet.", "course_id" => Course.find_by(title: "Advanced Level").id}
]

lesson_list.each do |lesson|
  Lesson.create( :title => lesson["title"], :description => lesson["description"], :course_id => lesson["course_id"] )
end

Unit.destroy_all

unit_list = [
  {"title" => "平溪影片", "description" => "介紹平溪", "lesson_id" => Lesson.find_by(title: "導覽簡介與認識旅客").id, "video" => "https://www.youtube.com/embed/UuWO1ZyJR6o" },
  {"title" => "艋舺影片", "description" => "介紹艋舺", "lesson_id" => Lesson.find_by(title: "導覽簡介與認識旅客").id, "video" => "https://www.youtube.com/embed/Stj-mGv9nHI" },
  {"title" => "基隆地標影片", "description" => "基隆地標影片", "lesson_id" => Lesson.find_by(title: "導覽簡介與認識旅客").id, "video" => "https://www.youtube.com/embed/39EOBVsUQXI"  }
]


unit_list.each do |unit|
  Unit.create( :title => unit["title"], :description => unit["description"], :lesson_id => unit["lesson_id"], :video => unit["video"] )
end
