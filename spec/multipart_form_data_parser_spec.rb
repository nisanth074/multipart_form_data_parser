require "spec_helper"

describe MultipartFormDataParser do
  describe ".parse" do
    it "parses multipart form data" do
      multipart_form_data = read_fixture("multipart_form_data1")
      content_type = "multipart/form-data; boundary=xYzZY"
      MultipartFormDataParser.parse(multipart_form_data, content_type)
    end
  end
end
