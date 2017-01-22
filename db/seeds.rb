bart = Student.create name: 'Bart Simpson'
edna = Tutor.create name: 'Mrs Krabapple'
Klass.create subject: 'Maths', student: bart, tutor: edna


# find all Bart's tutors
Student.find_by(name: 'Bart Simpson').tutors

# get all students who attend the Maths class
Student.joins(:klasses).where(klasses: {subject: 'Maths'}).distinct.pluck(:name)

# get all students who attend Maths taught by Mrs Krabapple
Student.joins(:tutors).joins(:klasses).where(klasses: {subject: 'Maths'}, tutors: {name: 'Mrs Krabapple'}).distinct.map {|x| puts x.name}