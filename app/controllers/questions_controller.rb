class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @message = params[:message]
    @you = "- You"
    @couch = "- Your Coach"
    if @message == "I am going to work"
      @answer = "Great!"
    elsif @message.include?('?')
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
