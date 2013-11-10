require 'spec_helper'

  describe Sqrl::Nut do
    it "should generate a valid nut" do
      FactoryGirl.create(:nut).should be_valid
    end
    it "should have an ip address" do
      nut = FactoryGirl.build(:nut)
      nut.ip.should_not be_blank
    end
    it "should have an expiration time" do
      nut = FactoryGirl.create(:nut)
      nut.expires.should_not be_blank
    end
    it "should expire in 10 minutes" do
      Timecop.freeze(Time.now)
      nut = FactoryGirl.create(:nut)
      future = (Time.now + 11.minutes).to_i
      expect(nut.expires).to be < future
    end
    it "should not be valid if exipration time has passed" do
      Timecop.freeze(Time.now)
      nut = FactoryGirl.create(:nut)
      future = Time.now + 11.minutes
      Timecop.travel(future)
      nut.valid?.should_not be_true
    end
    it "should not be valid without an ip address" do
      FactoryGirl.build(:nut, ip: "").should_not be_valid
    end
  end