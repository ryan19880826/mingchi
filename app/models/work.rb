class Work < ActiveRecord::Base
	belongs_to :category
	has_many :work_pics
	accepts_nested_attributes_for :work_pics, allow_destroy: true

    paginates_per 6

    def first_photo
        self.work_pics.first
    end

	rails_admin do
        list do
            field :title
            field :description
            field :created_at do
           		strftime_format '%Y-%m-%d'
            end
            field :work_pics 
        end

        edit do
        	field :category do
                inline_add false
                inline_edit false
            end    
        	field :title
            field :description, :text
            field :address
            field :footage
            field :work_pics
        end
    end
end
