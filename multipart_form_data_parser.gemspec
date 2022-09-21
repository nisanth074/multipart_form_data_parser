require_relative "lib/multipart_form_data_parser/version"

Gem::Specification.new do |s|
  s.name          = "multipart_form_data_parser"
  s.version       = MultipartFormDataParser::VERSION
  s.authors       = ["Nisanth Chunduru"]
  s.email         = ["nisanth074@gmail.com"]
  s.homepage      = "https://github.com/nisanth074/multipart_form_data_parser"
  s.summary       = "Multipart form data parser"
  s.description   = "Multipart form data parser"

  s.files = Dir["{lib}/**/*", "README.md"]

  s.add_dependency "rack"

  s.add_development_dependency "rspec"
  s.add_development_dependency "pry"
end
