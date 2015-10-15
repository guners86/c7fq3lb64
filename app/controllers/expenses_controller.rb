class ExpensesController < ApplicationController
  def index
  	if params[:concept]
      @expenses = Expense.search(params[:concept]).order("date DESC")
    else
      @expenses = Expense.order("date DESC")
    end     
  end
end
