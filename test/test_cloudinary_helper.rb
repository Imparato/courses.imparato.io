# frozen_string_literal: true

module TestCloudinaryHelper
  def mock_cloudinary_upload
    stub_request(:post, \
                 "https://api.cloudinary.com/v1_1/fake-account/auto/upload") \
      .to_return(status: 200, body: response_upload_image_body)
  end

  private

  def response_upload_image_body
    <<-JSON
    {
      "public_id": "pbm2sjl9s1h86bttodtn",
      "version": 1528991305,
      "signature": "3b2580b850aa0f7e4b4d53c2123e5bbe478a4322",
      "width": 851,
      "height": 750,
      "format": "jpg",
      "resource_type": "image",
      "created_at": "2018-06-14T15:48:25Z",
      "tags": [],
      "bytes": 39219,
      "type": "upload",
      "etag": "2cc4b1f235cbea5fbc246fc5f26e4cbf",
      "placeholder": false,
      "url": "http://res.cloudinary.com/fake-account/image/upload/v1528991305/pbm2sjl9s1h86bttodtn.jpg",
      "secure_url": "https://res.cloudinary.com/fake-account/image/upload/v1528991305/pbm2sjl9s1h86bttodtn.jpg",
      "original_filename": "avatar",
      "original_extension": "jpeg"
   }
    JSON
  end
end
