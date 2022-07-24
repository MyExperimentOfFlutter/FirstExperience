abstract class Bank {
  int amount = 0;
  getBalance(amount) {
    print('Amount = $amount is deposited in bank');
  }

  depositedAmount(amount);
}

class BankA extends Bank {
  @override
  depositedAmount(amount) {
    print('Amount = $amount is deposited in bankA');
  }

  @override
  getBalance(amount) {
    print('Balance of BankA of particular person= \$${amount}');
  }
}

class BankB extends Bank {
  @override
  depositedAmount(amount) {
    print('Amount = $amount is deposited in bankB');
  }

  @override
  getBalance(amount) {
    print('Balance of BankB of particular person= \$${amount}');
  }
}

class BankC extends Bank {
  @override
  depositedAmount(amount) {
    print('Amount = $amount is deposited in bankC');
  }

  @override
  getBalance(amount) {
    print('Balance of BankC of particular person= \$${amount}');
  }
}

void main() {
  BankA BA = new BankA();
  BA.amount = 100;
  BA.depositedAmount(BA.amount);
  BA.getBalance(BA.amount);

  BankB BB = new BankB();
  BB.amount = 200;
  BB.depositedAmount(BB.amount);
  BB.getBalance(BB.amount);

  BankC BC = new BankC();
  BC.amount = 300;
  BC.depositedAmount(BB.amount);
  BC.getBalance(BC.amount);
}
