require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    @word_count = @analyzed_text.count_of_words
    @vowel_count = @analyzed_text.count_of_vowels
    @constant_count = @analyzed_text.count_of_constants
    @
    
    erb :results
  end
end
