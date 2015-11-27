class WorkController < ApplicationController
  def index
     @works = Work.all
     @works = @works.where(:category_id => params[:category_id]) unless params[:category_id].blank?
     @works = @works.order("created_at desc").page params[:page]  

  	 @categories = Category.all
  end
  def show
    @work = Work.find(params[:id])
    @other_work = Work.all.shuffle[0..2]
    return redirect_to root_path if @work.blank?
  end
end
