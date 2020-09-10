Coach.destroy_all
Student.destroy_all
Gym.destroy_all
ClassSession.destroy_all

Student.create(name: 'Darrick Pang', password: '123', age: 30, location: 'California')
Student.create(name: 'Moe Szyslak', password: '123', age: 35, location: 'Springfield')
Student.create(name: 'Marge Simpson', password: '123', age: 31, location: 'Springfield')
Student.create(name: 'Homer Simpson', password: '123', age: 38, location: 'Springfield')
Student.create(name: 'Chief Wiggum', password: '123', age: 38, location: 'Springfield')
Student.create(name: 'James Bond', password: '123', age: 38, location: 'UK')
Student.create(name: 'Professor Frink', password: '123', age: 25, location: 'Springfield')

Coach.create(name: 'John Doe', password: '123', age: 40, location: 'California')
Coach.create(name: 'Joe Montana', password: '123', age: 64, location: 'California')
Coach.create(name: 'Jerry Rice', password: '123', age: 57, location: 'California')
Coach.create(name: 'Steve Young', password: '123', age: 58, location: 'California')

Gym.create(name: 'Sports Center', address: '1325 E Calaveras Blvd', city: 'Milpitas, CA', zip_code: 95035)
Gym.create(name: 'Cuesta Park', address: '615 Cuesta Dr', city: 'Mountain View, CA', zip_code: 94040)

ClassSession.create(name: 'strength training', time: '3:00 pm', date: '2020-09-09', duration: 'one hour', gym_id: 1, coach_id: 1)
ClassSession.create(name: 'running', time: '11:00 am', date: '2020-09-10', duration: 'one hour', gym_id: 1, coach_id: 1)
ClassSession.create(name: 'swimming', time: '11:00 am', date: '2020-09-11', duration: 'one hour', gym_id: 1, coach_id: 1)

StudentDate.create(student_id: 1, date: '2020-09-09', class_name: 'strength training')
StudentDate.create(student_id: 1, date: '2020-09-10', class_name: 'running')
StudentDate.create(student_id: 1, date: '2020-09-11', class_name: 'swimming')
StudentDate.create(student_id: 1, date: '2017-05-31', class_name: 'PST')
StudentDate.create(student_id: 1, date: '2017-06-07', class_name: 'PST')