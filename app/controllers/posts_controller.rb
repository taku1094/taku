class PostsController < ApplicationController
    
    def show
        @post = Post.find_by(id: params[:id])
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(title: params[:title],
                         content: params[:content],
                        user_id: current_user.id
                        )
        if @post.save
            flash[:notice] = "投稿完了"
            redirect_to("/")
        else
            render "/posts/new"
        end
    end
    
   
    
    def edit
         @post = Post.find_by(id: params[:id])
    end
    
    def update
        @post = Post.find_by(id: params[:id])
       
        if @post.update(title: params[:title],
                         content: params[:content])
            flash[:notice] = "編集完了"
            redirect_to("/")
        else
            render "/posts/edit"
        end
    end
    
    def destroy
        @post = Post.find_by(id: params[:id])
        @post.destroy
        redirect_to("/")
    end
    
    
    
end
