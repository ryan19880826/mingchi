class WorkPic < ActiveRecord::Base
	belongs_to :work
	mount_uploader :photo, WorkPicPhotoUploader
	rails_admin do
        list do
        	field :id do
        		label "ID"
        	end	
            field :photo do
            	label "照片"
                pretty_value do
                    bindings[:view].tag(:img, { :src => bindings[:object].photo ,:width => '500'})
                end
                column_width 520
            end
        end  

        edit do
            field :photo
            field :work do
                visible false
            end

        end
    end	
end
