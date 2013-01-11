require 'spec_helper'

describe RailsParseFixes do
  it 'calls apply on require' do
    require 'rails_parse_fixes'
    RailsParseFixes.should be_loaded
  end

  it 'requires without error' do
    lambda { require 'rails_parse_fixes' }.should_not raise_error
  end
end

