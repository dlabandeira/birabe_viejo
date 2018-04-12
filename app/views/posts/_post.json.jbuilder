json.extract! post, :id, :nombre, :contenido, :autor, :fecha, :hora, :principal, :created_at, :updated_at
json.url post_url(post, format: :json)
