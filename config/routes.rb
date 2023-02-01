Rails.application.routes.draw do
  root "survey#home"
  get "/survey/rating", to: "survey#rating"
  get "/survey/multiple-choice-questions", to: "survey#multiple_choice"
  get "/survey/open-ended-feedback", to: "survey#open_ended"
  get "/end", to: "survey#end"
end
