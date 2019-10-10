class Bank
    def initialize
        @balance = 0
    end

    def balance
        return "The balance in your account is £" + @balance.to_s
    end

    def deposit(money)
        return "The balance in your account is £" + (@balance += money).to_s
    end

    def withdraw(money)
        return "The balance in your account is £" + (@balance -= money).to_s
    end
end