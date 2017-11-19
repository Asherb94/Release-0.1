json.extract! movie, :id, :title, :titleid, :created_at, :updated_at
json.url movie_url(movie, format: :json)
