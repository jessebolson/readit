class VotesController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    @story.votes.create(user: @current_user)
    respond_to do |format|
      format.html { redirect_to @story, notice: 'VOTE CASTED' }
      format.js {}
    end
  end
end
