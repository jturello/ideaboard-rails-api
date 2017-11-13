module Api::V1
  class IdeasController < ApplicationController
    def index
      @ideas = Idea.order('created_at DESC')
      render json: @ideas 
    end

    def create 
      @idea = Idea.new(idea_params)
      if @idea.save 
	render json: @idea
      else
	render json: @idea.errors, status: :unprocessable_entity
      end
    end

    def update 
      @idea = Idea.find(params[:id])
      @idea.update_attributes(idea_params)
      render json: @idea
    end


    private

    def idea_params
      params.require(:idea).permit(:title, :body)
    end
  end
end
