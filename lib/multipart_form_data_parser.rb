# require "rack/multipart"
# require "rack/utils"

require "rack"

class MultipartFormDataParser
  class << self
    # @example
    #   content_type = "multipart/form-data; boundary=xYzZY"
    #   MultipartFormDataParser.parse(multipart_form_data, content_type)
    def parse(multipart_form_data, content_type)
      sanitized_multipart_form_data = multipart_form_data.gsub(/\r?\n/, "\r\n")

      io = StringIO.new(sanitized_multipart_form_data)
      tempfile = Rack::Multipart::Parser::TEMPFILE_FACTORY
      bufsize = Rack::Multipart::Parser::BUFSIZE
      query_parser = Rack::Utils.default_query_parser
      Rack::Multipart::Parser.parse(io, sanitized_multipart_form_data.length, content_type, tempfile, bufsize, query_parser)
    end
  end
end

require_relative "multipart_form_data_parser/version"
