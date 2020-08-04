Rails.application.routes.draw do
  root to:"statuses#index"
  post"/create",to:"statuses#create"
  delete"/statuses/:id",to:"statuses#destroy"
  get"/statuses/:id/edit",to:"statuses#edit"
  patch"/statuses/:id",to:"statuses#update"
  get"/stars/:id",to:"stars#show"
end
