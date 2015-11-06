class VotesController < ApplicationController
	
	def upvote
		respond_to do |format|
			if Vote.upvote(current_user, @link)
				json= { 'success' => true, 'link_id' => @link.id}
				format.json {render json: json, status: :created}
			else 
				json = {
					'success' => false,
					'link_id' => post.id,
					'error' = 'there was a problem with your vote'
				}
				format.json {render json: json, status: :bad_request}
			end 
		end 
end

def downvote
    respond_to do |format|
      if Vote.downvote(current_user, @link)
        json = { 'success' => true, 'link_id' => @link.id }
        format.json { render json: json, status: :created }
      else
        json = {
          'success' => false,
          'post_id' => @link.id,
          'error' => 'Oops'
        }
        format.json { render json: json, status: :bad_request }
      end
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
