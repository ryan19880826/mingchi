class Qa < ActiveRecord::Base
    rails_admin do
        list do
            field :id do
                label "ID"
            end 
            field :question
            field :answer
            field :updated_at do
                strftime_format '%Y-%m-%d'
            end
            field :created_at do
                strftime_format '%Y-%m-%d'
            end
        end

        edit do
            field :question
            field :answer
        end
    end 
end
