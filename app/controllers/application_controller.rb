class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/materials" do
    materials = Material.all
    materials.to_json(include: :comments)
  end

  get "/books/" do
    material = Material.all(name: params[:name], source: params[:source], likes: params[:likes])
    material.to_json(include: :comments)
  end

  get "/comments/:id" do
    comment = Comment.find(params[:id])
    comment.to_json
  end
  get "/users/:username" do
    user = User.find_by_username(params[:username])
    user.to_json(include: :materials)
  end

  post "/materials" do
    new_material = Material.create(name: params[:name], source: params[:source], likes: params[:likes])
    new_material.to_json
  end

  post "/materials/:material_id/comments" do
    material = Material.find_by(id: params[:material_id])
    new_comment = material.comments.create(text: params[:text])
    new_comment.to_json(include: :material)
  end

  patch "/materials/:id" do
    material = Material.find_by(id: params[:id])
    material.update(likes: params[:likes])
    material.to_json(include: :comments)
  end

  delete "/comments/:id" do
    comment = Comment.find_by(id: params[:id])
    comment.destroy
    comment.to_json
  end

end
