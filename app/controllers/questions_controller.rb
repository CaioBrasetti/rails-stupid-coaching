class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @pergunta = params[:answer]
    if @pergunta.end_with?("?")
      @pergunta = "Silly question, get dressed and go to work!"
    elsif @pergunta.empty?
      @pergunta = "Hello coach!"
    elsif @pergunta == "I am going to work"
      @pergunta = "Great!"
    else
      @pergunta = "I don't care, get dressed and go to work!"
    end
  end
end
