require 'spec_helper'

describe Scolomfr do
  EXAMPLE_NOTICE = 'assets/ExempleManuelReferenceScoLOMFRv3-2.xml'
  EXAMPLE_NOTICE_WITH_ERRORS = 'assets/ExempleManuelReferenceScoLOMFRv3-2_with_error.xml'

  context 'reference manual notice' do
    it 'returns no ERROR' do
      expect(Scolomfr.is_notice_valid? EXAMPLE_NOTICE).to eq true
    end
  end

  context 'reference manual notice with errors' do
    it 'returns false' do
      expect(Scolomfr.is_notice_valid? EXAMPLE_NOTICE_WITH_ERRORS).to eq false
    end
  end
end