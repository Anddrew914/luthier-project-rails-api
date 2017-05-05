require 'rails_helper'

RSpec.describe "Instruments", type: :request do
  describe "GET /instruments" do
    it "works! (now write some real specs)" do
      get instruments_path
      expect(response).to have_http_status(200)
    end
  end
end
