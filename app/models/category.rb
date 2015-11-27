class Category < ActiveRecord::Base
	has_many :works
	accepts_nested_attributes_for :works, allow_destroy: true

	rails_admin do
        list do
        	field :id do
        		label "ID"
        	end	
            field :name
            field :updated_at do
           		strftime_format '%Y-%m-%d'
            end
            field :created_at do
           		strftime_format '%Y-%m-%d'
            end
        end

        edit do
            field :name
        end
    end		
end
