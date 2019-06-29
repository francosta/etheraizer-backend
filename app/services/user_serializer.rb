class UserSerializer

    def initialize(user_object)
        @user = user_object
    end


    def to_serialized_hash
        options = {
          include: {
            projects: {
              only: [:title, :description, :goal, :status]
            }
          },
          except: [:updated_at, :created_at, :id, :password_digest],
        }
        @user.to_json(options)
    end
end