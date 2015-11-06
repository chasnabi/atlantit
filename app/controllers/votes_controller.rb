class VotesController < ApplicationController
	
	def upvote
			@link = Link.find(params[:id]) 
      @link.score += 1
      @link.save

end

def downvote
   @link = Link.find(params[:id])
   @link.score -=1
   @link.save
        
 end
   

end
