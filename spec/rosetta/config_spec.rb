require 'spec_helper'

describe Rosetta::Config do
  subject { described_class.new }

  before do
    ENV.delete('GEM_EDITOR')
    ENV.delete('VISUAL')
    ENV.delete('EDITOR')
  end

  describe 'Setup' do
    it do
      subject.setup do |config|
        config.repository = Rosetta::Repositories::FooBar
      end
      expect(subject.repository).to eq(Rosetta::Repositories::FooBar)
    end
  end

  describe 'repository' do
    it 'sets the default repository to local' do
      expect(subject.repository).to eq(Rosetta::Repositories::Local)
    end

    it 'allows to change the repository' do
      subject.repository = Rosetta::Repositories::FooBar

      expect(subject.repository).to eq(Rosetta::Repositories::FooBar)
    end
  end
end

module Rosetta; module Repositories; class FooBar; end end end