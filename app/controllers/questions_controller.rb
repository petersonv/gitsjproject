class QuestionsController < ApplicationController
    #create a var, assign it all the questions
    #render all the questions, render it as json and pass in the var
    #so now when we go to api/v1/questions we expect to get all the questions back
    def index
        questions = question.all
        render json: questions
    end
    
end
