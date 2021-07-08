require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'validations' do
    describe 'amount' do
      let(:transaction) { Transaction.new(amount: amount) }

      context 'when amount presents' do
        let(:amount) { 1.0 }

        it { expect(transaction.valid?).to be_truthy }
      end

      context 'when amount is missed' do
        let(:amount) { nil }

        it { expect(transaction.valid?).to be_falsey }
      end
    end
  end
end
