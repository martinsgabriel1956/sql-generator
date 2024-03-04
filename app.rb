# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'
require 'dotenv'
Dotenv.load

require_relative './app/controller/generate_sql'

post '/generate-sql' do
  request.body.rewind
  request_payload = JSON.parse(request.body.read)
  { result: GenerateSqlController.generate(query: request_payload) }.to_json
end
