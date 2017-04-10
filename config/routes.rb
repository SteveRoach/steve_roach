Rails.application.routes.draw do
  root 'cat_play#cp_home'
  get 'cp_home' => 'cat_play#cp_home'
  get 'cp_journal' => 'cat_play#cp_journal'
  get 'cp_technical' => 'cat_play#cp_technical'
  get 'cp_contact' => 'cat_play#cp_contact'
end
