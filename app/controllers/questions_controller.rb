class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @search = params[:question]
    @coach_answer = ''
    if @search.downcase == 'i am going to work'
      @coach_answer = 'Great'
    elsif @search.end_with?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
