require 'spec_helper'

describe AnswersController do

  describe "POST #create" do
    it "creates a answer with the given params" do
      expect {
        post :create, answer: FactoryGirl.attributes_for(:answer)
      }.to change(Answer, :count).by(1)
    end
  end
end