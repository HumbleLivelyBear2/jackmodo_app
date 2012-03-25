require 'spec_helper'

describe Payment do

  def reset_payment(options = {})
    @valid_attributes = {
      :id => 1,
      :status => "RSpec is great for testing too"
    }

    @payment.destroy! if @payment
    @payment = Payment.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_payment
  end

  context "validations" do
    
    it "rejects empty status" do
      Payment.new(@valid_attributes.merge(:status => "")).should_not be_valid
    end

    it "rejects non unique status" do
      # as one gets created before each spec by reset_payment
      Payment.new(@valid_attributes).should_not be_valid
    end
    
  end

end