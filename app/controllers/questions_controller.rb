class QuestionsController < ApplicationController
  def show
  end

  def edit
  	@question = Question.find(params[:id])
  end

  def new
  	@question = Question.new
  end

  def index
  	@questions = Question.all
  end
end
