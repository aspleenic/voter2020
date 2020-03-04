require 'sinatra'

Options = {
  'Goose' => 'Untitled Goose Game',
  'Fortnite' => 'Fortnite',
  'Smash' => 'Smash Bros Ultimate',
  'MCC' => 'Halo: Master Chief Edition',
  'HL3' => 'Half Life 3',
}

get '/' do
  erb :index
end

post '/vote' do
  @title = 'Thanks for voting!'
  @vote  = params['choice']
  erb :vote
end
