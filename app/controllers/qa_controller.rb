class QaController < ApplicationController
  def index
    @qas = Qa.all.order("id asc")
  end
  def show
    @qas = Qa.all.order("id asc")
    @qa = Qa.find(params[:id])  
  end
end
