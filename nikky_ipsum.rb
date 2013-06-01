require './ipsum'

class NikkyIpsum < Sinatra::Base

  set :logging, true # Sends log to STDOUT

  set :public_folder, File.dirname(__FILE__) + '/static'

  configure do
    set :static_cache_control, [:public, :max_age => 60]
  end

  get '/' do
    erb :index
  end

  get '/raw_ipsum/:para' do
    results = ""
    para = params[:para].to_i
    para = 20 if para > 20
    para.times do
      results << "<p>"
      results << Nikky.generate_paragraph
      results << "</p>"
    end
    results
  end

  get '/raw_ipsum' do
    results = ""
    5.times do
      results << "<p>"
      results << Nikky.generate_paragraph
      results << "</p>"
    end
    results
  end

  get '/ipsum.json' do
    content_type :json
    { ipsum: Nikky.generate_paragraph}.to_json
  end


  get '/js/ipsum.js' do
    coffee :ipsum
  end

end

