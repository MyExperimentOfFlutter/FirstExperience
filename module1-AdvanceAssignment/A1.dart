import 'dart:ffi';

import '../B44.dart';

class RBI {
  var minBalanceAllowed;
  var minInteresrtRate;
  var maxWithdrawlLimit;

  double setMinimumInterestRate(int amount) {
    return amount * 0.4;
  }
}

class Customer {
  var customerName;
  var customerAccountNumber;
  var availableBalance;
  var customerBankName;
}

class Account {
  var accountNumber;
  var bankName;
  var interestRate;
}

class SBI implements RBI, Customer, Account {
  @override
  var accountNumber;

  @override
  var availableBalance;

  @override
  var bankName;

  @override
  var customerAccountNumber;

  @override
  var customerBankName;

  @override
  var customerName;

  @override
  var interestRate;

  @override
  var maxWithdrawlLimit;

  @override
  var minBalanceAllowed;

  @override
  var minInteresrtRate;

  @override
  double setMinimumInterestRate(int amount) {
    return amount * 0.04;
  }
}

class ICICI implements RBI, Account, Customer {
  @override
  var accountNumber;

  @override
  var availableBalance;

  @override
  var bankName;

  @override
  var customerAccountNumber;

  @override
  var customerBankName;

  @override
  var customerName;

  @override
  var interestRate;

  @override
  var maxWithdrawlLimit;

  @override
  var minBalanceAllowed;

  @override
  var minInteresrtRate;

  @override
  double setMinimumInterestRate(int amount) {
    return (amount * 0.04);
  }
}

void main() {
  print(' --------------For SBI--------------- ');
  SBI sbi = new SBI();
  sbi.customerName = 'ABC';
  sbi.accountNumber = 093910006890;
  sbi.availableBalance = 100000;
  sbi.interestRate = 0.04;
  var amountInterested = sbi.setMinimumInterestRate(sbi.availableBalance);
  print('customer name =${sbi.customerName}');
  print('customer a/c number = ${sbi.accountNumber}');
  print('customer available balance = ${sbi.availableBalance}');
  print('interested amount = ${amountInterested}');
  print(' --------------For SBI--------------- ');

  print('');
  print(' --------------For ICICI ------------- ');
  ICICI icici = new ICICI();
  icici.customerName = 'DEF';
  icici.accountNumber = 9898352543444;
  icici.availableBalance = 4500000;
  var amountInterestedICICI =
      icici.setMinimumInterestRate(icici.availableBalance);

  print('customer name = ${icici.customerName}');
  print('customer a/c number = ${icici.accountNumber}');
  print('customer available balance = ${icici.availableBalance}');
  print('interested amount = ${amountInterestedICICI}');

  print(' --------------For ICICI ------------- ');
}
