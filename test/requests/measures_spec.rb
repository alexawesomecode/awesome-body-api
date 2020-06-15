require 'rails_helper'


RSpec.describe "Measure", type: :request do
  describe "request list of all Measures" do
    get measures_path
    expect(response).to be_successful
#    expect(response.body).to include(“Test user”)
  end
end


