Coach.destroy_all
Student.destroy_all
Gym.destroy_all
ClassSession.destroy_all

Student.create(name: 'Darrick Pang', password: '123', age: 30, location: 'California')
Student.create(name: 'Two', password: '123', age: 35, location: 'California')
Student.create(name: 'Three', password: '123', age: 31, location: 'California')
Student.create(name: 'Homer Simpson', password: '123', age: 38, location: 'Springfield')

Coach.create(name: 'John Doe', password: '123', age: 40, location: 'California')
Coach.create(name: 'Joe Montana', password: '123', age: 64, location: 'California')

Gym.create(name: 'Sports Center', address: '1325 E Calaveras Blvd', city: 'Milpitas, CA', zip_code: 95035)
Gym.create(name: 'Cuesta Park', address: '615 Cuesta Dr', city: 'Mountain View, CA', zip_code: 94040)

ClassSession.create(name: 'strength training', time: '3:00 pm', date: '2020-09-09', duration: 'one hour', gym_id: 1, coach_id: 1)
ClassSession.create(name: 'running', time: '11:00 am', date: '2020-09-10', duration: 'one hour', gym_id: 1, coach_id: 1)
ClassSession.create(name: 'swimming', time: '11:00 am', date: '2020-09-11', duration: 'one hour', gym_id: 1, coach_id: 1)

StudentDate.create(student_id: 1, date: '2020-09-09', class_name: 'strength training')
StudentDate.create(student_id: 1, date: '2020-09-10', class_name: 'running')
StudentDate.create(student_id: 1, date: '2020-09-11', class_name: 'swimming')