class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable
	rails_admin do
        list do
        	field :email do
        		label "信箱"
        	end	
            field :sign_in_count do
            	label "登入次數"
            end	
            field :last_sign_in_at do
            	label "上次登入時間"
           		strftime_format '%Y-%m-%d'
            end
        end

        edit do
        	field :email do
        		label "信箱"
        	end	
            field :password do
            	label "密碼"
            end	
        end
    end	  
end
