# frozen_string_literal: true

require 'spec_helper'

module Rosetta
  module Repositories
    RSpec.describe Database do
      subject { described_class.new }

      it { expect(subject.label).to eq 'Database' }
      it { expect(subject.id).to eq 'database' }
      it { expect(subject.build_link(%w[common text]).is_a?(String)).to be_truthy }
    end
  end
end
