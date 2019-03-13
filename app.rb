require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  # post '/' do
  #   text_from_user = params[:user_text]
  #
  #   # take data from params[user_text] (in tpost '/' do route), feed it into new inst. of TextAnalyzer class
  #   @analyzed_text = TextAnalyzer.new(text_from_user)
  #
  #   erb :results
  # end

  # replace above post w/ this post
  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])

    erb :results
  end
end
