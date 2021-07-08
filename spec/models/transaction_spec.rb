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

  describe 'legacy offense' do
    describe 'legacy offense nested' do
      describe 'more legacy offense nested' do
        context 'when nested context' do
          context 'when more nested context' do
            let(:transaction) { Transaction.new }
            let!(:excess_let_1) { 1 }
            let!(:excess_let_2) { 2 }
            let(:excess_let_3) { 3 }
            let(:excess_let_4) { 4 }
            let(:excess_let_5) { 5 }
            let(:excess_let_6) { 6 }
            let(:excess_let_7) { 7 }
            let(:excess_let_8) { 8 }
            let(:excess_let_9) { 9 }

            before { @foo = 1 }

            context 'when legacy offense presents' do
              it { expect(transaction.valid?).to be_falsey }
              it { expect(@foo).to eq 1 }
            end
          end
        end
      end
    end                                          
  end

  describe 'new offense' do
    describe 'new offense nested' do
      describe 'more new offense nested' do
        context 'when nested context' do
          context 'when more nested context' do
            let(:transaction) { Transaction.new }
            let!(:excess_let_1) { 1 }
            let!(:excess_let_2) { 2 }
            let(:excess_let_3) { 3 }
            let(:excess_let_4) { 4 }
            let(:excess_let_5) { 5 }
            let(:excess_let_6) { 6 }
            let(:excess_let_7) { 7 }
            let(:excess_let_8) { 8 }
            let(:excess_let_9) { 9 }

            before { @bar = 2 }

            context 'when new offense presents' do
              it { expect(transaction.valid?).to be_falsey }
              it { expect(@foo).to eq 2 }
            end
          end
        end
      end
    end                                          
  end  
end
