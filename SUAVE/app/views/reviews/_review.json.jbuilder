json.extract! review, :id, :idEscola, :nomeEscola, :nota, :comentario, :created_at, :updated_at
json.url review_url(review, format: :json)
