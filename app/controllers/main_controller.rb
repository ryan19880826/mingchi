class MainController < ApplicationController
  def index
  	@works = Work.order("created_at desc").limit(3)
  end
end
