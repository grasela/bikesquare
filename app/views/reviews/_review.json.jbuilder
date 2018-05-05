json.extract! review, :id, :content, :reviewer_id, :rating, :reviewed_user_id, :created_at, :updated_at
json.url review_url(review, format: :json)
