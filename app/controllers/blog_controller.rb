class BlogController < ApplicationController
        def index
            @blogs = Blog.all
        end

        def show
            @blog = Blog.find(params[:id])
        end

        def new
            @blog = Blog.new
        end

        def create
            @blog = Blog.create(blog_params)
        end

        def delete
            @blog = Blog.find(params[:id])
            if @blog.destroy
                redirect_to blogs_path
            end
        end 

        def edit
            @blog = Blog.find(params[:id])
        end

        def update
            @blog = Blog.find(params[:id])
            if @blog.update(blog_params)
                redirect_to blogs_path(@blog)
            end
        end

private
        def blog_params
            params.require(:blog).permit(:title, :content)
        end
end

