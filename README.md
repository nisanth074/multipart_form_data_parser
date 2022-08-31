# multipart_form_data_parser

Multipart form data parser for Ruby and Rails applications

## Installation

Add the gem to your Gemfile

```ruby
gem "multipart_form_data_parser"
```

and install the gem

```
bundle install
```

## Usage

```ruby
content_type = "multipart/form-data; boundary=xYzZY"
result = MultipartFormDataParser.parse(multipart_form_data, content_type)
params = result.params
```
