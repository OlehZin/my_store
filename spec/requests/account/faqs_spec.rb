 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/account/faqs", type: :request do
  # Account::Faq. As you add validations to Account::Faq, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Account::Faq.create! valid_attributes
      get account_faqs_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      faq = Account::Faq.create! valid_attributes
      get account_faq_url(account_faq)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_account_faq_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      faq = Account::Faq.create! valid_attributes
      get edit_account_faq_url(account_faq)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Account::Faq" do
        expect {
          post account_faqs_url, params: { account_faq: valid_attributes }
        }.to change(Account::Faq, :count).by(1)
      end

      it "redirects to the created account_faq" do
        post account_faqs_url, params: { account_faq: valid_attributes }
        expect(response).to redirect_to(account_faq_url(@account_faq))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Account::Faq" do
        expect {
          post account_faqs_url, params: { account_faq: invalid_attributes }
        }.to change(Account::Faq, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post account_faqs_url, params: { account_faq: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested account_faq" do
        faq = Account::Faq.create! valid_attributes
        patch account_faq_url(account_faq), params: { account_faq: new_attributes }
        faq.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the account_faq" do
        faq = Account::Faq.create! valid_attributes
        patch account_faq_url(account_faq), params: { account_faq: new_attributes }
        faq.reload
        expect(response).to redirect_to(account_faq_url(faq))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        faq = Account::Faq.create! valid_attributes
        patch account_faq_url(account_faq), params: { account_faq: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested account_faq" do
      faq = Account::Faq.create! valid_attributes
      expect {
        delete account_faq_url(account_faq)
      }.to change(Account::Faq, :count).by(-1)
    end

    it "redirects to the account_faqs list" do
      faq = Account::Faq.create! valid_attributes
      delete account_faq_url(account_faq)
      expect(response).to redirect_to(account_faqs_url)
    end
  end
end
