class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
#if the question user is "i'm going to work" then answer is great
    if @question == "I am going to work"
      @answer = "Great!"
#  if question ? answer is silly question
    elsif @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
# else answer is i don"t care
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
