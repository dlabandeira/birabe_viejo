json.extract! comment, :id, :post_id, :user_id, :body, :created_at, :updated_at
json.user do
  json.nombre @comment.user.nombre
  json.apellidos @comment.user.apellidos
  json.email @comment.user.email
end
