# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'MinWeathers', type: :request do
  before { create(:value_weather) }

  describe 'GET /index' do
    it 'returns http success', :vcr do
      get '/api/v1/weather/historical/min.json'
      expect(response).to have_http_status(:success)
    end
  end
end
