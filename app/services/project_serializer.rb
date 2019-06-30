class ProjectSerializer

    def initialize(project_object)
        @project = project_object
    end

    

    def to_serialized_hash
        options = {
          include: {
            users: {
              only: [:first_name, :last_name, :email, :id]
            },
          },
          except: [:updated_at, :created_at],
        }
        @project.to_json(options)
    end
end