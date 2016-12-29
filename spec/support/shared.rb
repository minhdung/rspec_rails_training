# frozen_string_literal: true
RSpec.shared_examples 'json result' do
  specify 'returns JSON' do
    expect { JSON.parse(response.body) }.not_to raise_error
  end
end

%w(200 400 401 403).each do |code|
  RSpec.shared_examples code do
    specify "returns #{code}" do
      expect(response.status).to eq(code.to_i)
    end
  end
end
