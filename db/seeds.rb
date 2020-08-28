Coach.destroy_all
Student.destroy_all
Gym.destroy_all
ClassSession.destroy_all

Student.create(name: 'Darrick Pang', password: '123', age: 30, location: 'California')
Coach.create(name: 'John Doe', password: '123', age: 40, location: 'California')
Gym.create(name: 'Sports Center', address: '1325 E Calaveras Blvd', city: 'Milpitas, CA', zip_code: 95035)
ClassSession.create(name: 'strength training', location: '1325 E Calaveras Blvd', duration: 'one hour', gym_id: 1, coach_id: 1)