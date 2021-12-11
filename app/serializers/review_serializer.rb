class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :gym_id
end
