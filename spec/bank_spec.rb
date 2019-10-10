require './lib/bank.rb'

describe Bank do
	it 'Creates an instance of Bank class' do
		bank_account = Bank.new

		expect(bank_account).to be_a(Bank)
	end

	it 'returns the starting balance' do
		bank_account = Bank.new

		expect(bank_account.balance).to eq 'The balance in your account is £0'
	end

	it 'returns the balance when deposit is passed 100' do
		bank_account = Bank.new
		expect(bank_account.deposit(100)).to eq 'The balance in your account is £100'
	end

	it 'returns the balance when 50 is withdrawn' do
		bank_account = Bank.new
		bank_account.deposit(100)

		expect(bank_account.withdraw(50)).to eq 'The balance in your account is £50'
	end

	it 'returns the balance of the account' do
		bank_account = Bank.new
		bank_account.deposit(100)

		expect(bank_account.balance).to eq 'The balance in your account is £100'
	end
end