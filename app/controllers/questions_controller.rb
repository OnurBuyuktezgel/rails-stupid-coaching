class QuestionsController < ApplicationController
  def ask; end

  def answer
    @search = params[:question]
    @search = '' if @search.nil?
    @coach_answer = "I don't care, get dressed and go to work!"
    @coach_answer = 'Silly question, get dressed and go to work!' if @search.end_with?('?')
    @coach_answer = 'Great!' if @question == 'I am going to work'
  end
end
