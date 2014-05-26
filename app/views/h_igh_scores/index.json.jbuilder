json.array!(@h_igh_scores) do |h_igh_score|
  json.extract! h_igh_score, :id, :game, :score
  json.url h_igh_score_url(h_igh_score, format: :json)
end
