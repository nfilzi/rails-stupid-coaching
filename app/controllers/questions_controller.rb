class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    set_coach_answer
  end

  private

  def set_coach_answer
    @coach_answer = if @question == "I am going to work"
      "Great!"
    elsif @question.ends_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
