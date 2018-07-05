Hotel.create(name: "Awesome Hotel", adress: "USA Minnesota", description: "super")
Hotel.create(name: "bad Hotel", adress: "USA Texas", description: "awfull")
user = User.create(email: "alex22@gmail.com", name: nil, role: "user", password: 'test123', password_confirmation: 'test123')
Feedback.create
  user: user,
  review: "nice",
  cleanliness: 5,
  placement: 5,
  communication: 5,
  hotel_id: 1)
Feedback.create(
  user: user,
  review: "awesome!",
  cleanliness: 5,
  placement: 4,
  communication: 5,
  hotel_id: 2)
Feedback.create(
  user: user,
  review: "Not bad!",
  cleanliness: 4,
  placement: 4,
  communication: 5,
  hotel_id: 3)
Feedback.create(
  user: user,
  review: "awesome!",
  cleanliness: 2,
  placement: 1,
  communication: 1,
  hotel_id: 4)
