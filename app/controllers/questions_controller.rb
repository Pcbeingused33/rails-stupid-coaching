class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = nil
    if @question.downcase == "i am going to work right now!"
      p ""
      @answer = "Great"
    elsif @question.end_with?("?")
      p "Silly question, get dressed and go to work!"
      @answer = "Silly question, get dressed and go to work!"
    else
      p "I don't care, get dressed and go to work!"
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
