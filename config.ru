require 'httparty'


run lambda { |env| 
    request = Rack::Request.new(env)

    hosts = [
        'evening-medow-91132',
        'obscure-beyond-97514',
        'whispering-mesa-29313',
        'shrouded-reaches-36777',
        'hidden-views-81877',
        'fast-sea-58248',
        'rocky-scrubland-68340',
        'fathomless-stream-48840',
        'stark-citadel-67357',
        'tranquil-fjord-57959',
    ]

    if request.path == '/' 
        ['200', {'Content-Type' => 'text/html'}, ['Hello']]
    elsif request.path == '/tvshow' 
        ['200', {'Content-Type' => 'text/html'}, ['Altered Carbon']]
    elsif request.path == '/random_tvshow' 

        hostname = hosts.sample
        response = HTTParty.get("https://#{hostname}.herokuapp.com/tvshow")


    else
        ['404', {'Content-Type' => 'text/html'}, ['Not Found']]
    end

}
