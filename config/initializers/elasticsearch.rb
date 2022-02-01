# if File.exists?("config/elasticsearch.yml")
#    config = YAML.load_file("config/elasticsearch.yml")[Rails.env].symbolize_keys
#    Elasticsearch::Model.client = Elasticsearch::Client.new(config)
# end


require 'elasticsearch/model'

Elasticsearch::Model.client = Elasticsearch::Client.new log:true,
                            transport_options: {request: {timeout: 5 } }
