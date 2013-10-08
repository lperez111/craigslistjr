get '/' do
  @categories = Category.all
  erb :index
end

get '/categories/:id' do
  @category = Category.find(params[:id])
  erb :category
end

post '/categories/:id' do
  @category = Category.find(params[:id])
  @post = Post.create(params[:post])

  if @post.valid?
    @category.posts << @post
    erb :category
  else
    redirect to("/categories/#{@category.id}/posts/new")
  end
end

get '/categories/:category_id/posts/new' do
  @category = Category.find(params[:category_id])
  erb :new_post
end

get '/categories/:category_id/posts/:post_id/edit' do
  @category = Category.find(params[:category_id])
  @post = @category.posts.find(params[:post_id])
  erb :edit_post
end

get '/categories/:category_id/posts/:post_id' do
  @category = Category.find(params[:category_id])
  @post = @category.posts.find(params[:post_id])
  erb :post
end

post '/categories/:category_id/posts/:post_id' do
  @category = Category.find(params[:category_id])
  @post = @category.posts.find(params[:post_id])

  @post.update_attributes(params[:post])
  erb :post
end

