class ExpensesController < ApplicationController
  before_action :authenticate_user!
  
  def index
  	if params[:concept] or params[:category_id]
  	  @expenses = Expense.search(params[:concept], params[:category_id].to_i).order("date DESC")
  	else
  	  @expenses = Expense.order("date DESC")
  	end   
  end
end
