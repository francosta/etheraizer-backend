SupportContract.delete_all
User.delete_all
Project.delete_all

test_user = User.create(first_name: "Francisco", last_name: "Costa", email:"francisco@fcosta.pt", password_digest:"password")
test_user2 = User.create(first_name: "Xabi", last_name: "Casan", email:"xabi@xabi.com", password_digest:"password")


test_project = Project.create(title: "Test Project", description:"This a test project in order to check if the API is working or not. Let's hope it is...", goal: 1000, status:"created", progress:0, user_id: test_user.id)
test_project2 = Project.create(title: "Test Project 2", description:"This a test project in order to check if the API is working or not. Let's hope it is...", goal: 1000, status:"created", progress:0, user_id: test_user2.id)

SupportContract.create(user_id: User.last.id, project_id: Project.first.id, value: 0)
SupportContract.create(user_id: User.first.id, project_id: Project.last.id, value: 0)
