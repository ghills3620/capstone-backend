require 'rails_helper'

RSpec.describe "Wods", type: :request do
  describe "GET /wods" do
    it "works! (now write some real specs)" do
      get wods_path
      expect(response).to have_http_status(200)
    end
  end
end
