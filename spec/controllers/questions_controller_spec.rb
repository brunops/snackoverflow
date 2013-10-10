require 'spec_helper'

describe QuestionsController do
	context "GET #new" do
		it "should assign a new instance of question to a variable" do
			get :new
			expect(assigns(:question)).to be_a(Question)
    end

  context "POST #create"
    it "should redirect to root path" do
     post :create, question: {body: "some body"}
     response.should redirect_to(root_path)
    end

    it "should create a new instance of a question object" do
     expect {
      post :create, question: {body: "some body"}
      }.to change(Question,:count).by (1)
    end
  end

  context "GET #show" do
    let (:new_question) {FactoryGirl.create(:question_with_answers)}
    it "should list associated comments" do
      get :show, id: new_question.id
      expect(assigns(:answers).count).to eq(new_question.answers.count)
    end

  end


end