class VotesController < ApplicationController
	
	def upvote
			@link = Link.find(params[:id]) 
      @link.score += 1
      @link.save
      redirect_to root_path

end

def downvote
   @link = Link.find(params[:id])
   @link.score -=1
   @link.save
   redirect_to root_path
        
 end
   

end
