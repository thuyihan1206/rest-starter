# frozen_string_literal: true

require 'rest_starter'

RSpec.describe 'Rest Starter' do
  let(:rest_starter) { RestStarter.new }

  describe '#fetch' do
    let(:url) { 'http://example.com/resource' }
    let(:data) { 'foo' }
    subject { rest_starter.fetch(url) }

    before :each do
      allow(RestClient).to receive(:get).with(url).and_return(data)
    end

    it 'fetches data from the URL specificed' do
      expect(RestClient).to receive(:get).with(url).once
      subject
    end

    it 'assigns data to an instance variable' do
      subject
      expect(rest_starter.data).to eql(data)
    end
  end
end
