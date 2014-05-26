class UploadsController < ApplicationController
  def home
  end

  def uploadFile
  end

  require 'net/http'
  require 'net/http/post/multipart'

  def post_video_to_wistia(picture, datafile)
  	uri = URI('https://upload.wistia.com/')

  	http = Net::HTTP.new(uri.host, uri.port)
  	http.use_ssl = true

  	# Construct the request.
  	request = Net::HTTP::Post::Multipart.new uri.request_uri, {
    'api_password' => '<API_PASSWORD>',
    'contact_id'   => '<CONTACT_ID>', # Optional.
    'project_id'   => '<PROJECT_ID>', # Optional.
    'picture'      => '<MEDIA_NAME>', # Optional.

    'file' => UploadIO.new(
                File.open(datafile),
                'application/octet-stream',
                File.basename(datafile)
              )
  	}

  # Make it so!
  response = http.request(request)

  return response
end
  
end