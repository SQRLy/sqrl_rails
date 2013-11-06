require 'spec_helper'


  describe Sqrl::Nut do
    it "should generate a valid nut" do
      FactoryGirl.create(:sqrl_nut).should be valid
    end
    it "should have an ip address"
    it "should have an expiration time"
    it "should expire in 10 minutes"
    it "should not be valid if exipration time has passed"
    it "should not be valid without an ip address"
  end