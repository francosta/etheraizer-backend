User.delete_all
Project.delete_all
ProjectContract.delete_all
SupportContract.delete_all

User.create(first_name: "Francisco", last_name: "Costa", email:"francisco@fcosta.pt", password_digest:"password")