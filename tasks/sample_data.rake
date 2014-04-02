namespace :db do
  desc "Fill database with sample data"
  task :populate  do
    lectures = ['computer science', 'math', 'art', 'finance', 'business']
    titles = ['database', 'java', 'painting', 'plus', 'c++', 'management']
    courseids = []
    10.times { courseids << Faker::Code.isbn }

    ('a'..'z').each do |char|
      Room.create!(room: char, lecture: lectures.sample, title: titles.sample)
    end

    rooms = Room.all
    100.times do
      room = rooms.sample
      Gradereport.create!(studentid: "s#{Faker::Number.number(8)}", 
                          studentname: Faker::Name.name,
                          courseid: courseids.sample, 
                          grade: rand(0.0..100.0),
                          lecture: room.lecture, room: room.room, title: room.title)
    end
    
    Gradereport.all.each do |gradereport|
      Coursegrade.create!(studentid: gradereport.studentid, courseid: gradereport.courseid, grade: gradereport.grade)
    end

    courseids.each do |courseid|
      gradereport = Gradereport.find_by_courseid(courseid)
      Courseinformation.create!(studentid: gradereport.studentid,
                                courseid: courseid, 
                                grade: gradereport.grade,
                                lecture: gradereport.lecture, room: gradereport.room, title: gradereport.title)
    end
  end
end