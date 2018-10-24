class PostsController < ApplicationController
    def index
          
    end
    def show 
        @post = Post.find(params[:id])
    end
    def new
          
    end
    def create
        #  check if it is submitting to sqlite3 on the browser =>
        # render plain: params[:post].inspect 
        @post = Post.new(post_params)

        @post.save
        redirect_to @post
    end
    # A private function means it can only be accessed from this class
    private def post_params
        params.require(:post).permit(:title, :body)
    end
end
