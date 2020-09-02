Coach.destroy_all
Student.destroy_all
Gym.destroy_all
ClassSession.destroy_all

Student.create(name: 'Darrick Pang', password: '123', age: 30, location: 'California')
Student.create(name: 'Two', password: '123', age: 35, location: 'California')
Student.create(name: 'Three', password: '123', age: 31, location: 'California')

Coach.create(name: 'John Doe', password: '123', age: 40, location: 'California')
Coach.create(name: 'Homer Simpson', password: '123', age: 38, location: 'Springfield')

Gym.create(name: 'Sports Center', address: '1325 E Calaveras Blvd', city: 'Milpitas, CA', zip_code: 95035)

ClassSession.create(name: 'strength training', location: '1325 E Calaveras Blvd', duration: 'one hour', gym_id: 1, coach_id: 1)

StudentDate.create(student_id: 1, date: '2020-09-09', class_name: 'strength training')
StudentDate.create(student_id: 1, date: '2020-09-10', class_name: 'running')
StudentDate.create(student_id: 1, date: '2020-09-11', class_name: 'swimming')