SupportContract.delete_all
User.delete_all
Project.delete_all

test_user = User.create(first_name: "Francisco", last_name: "Costa", email:"francisco@fcosta.pt", password:"password")
test_user2 = User.create(first_name: "Xabi", last_name: "Casan", email:"xabi@xabi.com", password:"password")
