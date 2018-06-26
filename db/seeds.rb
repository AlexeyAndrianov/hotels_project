Hotel.create(name: "Awesome Hotel", adress: "USA Minnesota", description: "super")
Hotel.create(name: "bad Hotel", adress: "USA Texas", description: "awfull")
Feedback.create(send_by: "Adam Smith",
 review: "nice",
 cleanliness: 5,
 placement: 5,
 communication: 5,
 hotel_id: 1)
Feedback.create(send_by: "Alex",
 review: "awesome!",
 cleanliness: 5,
 placement: 4,
 communication: 5,
 hotel_id: 2)
Feedback.create(send_by: "Samuel",
 review: "Not bad!",
 cleanliness: 4,
 placement: 4,
 communication: 5,
 hotel_id: 3)
Feedback.create(send_by: "Dave",
 review: "awesome!",
 cleanliness: 2,
 placement: 1,
 communication: 1,
 hotel_id: 4)
