import 'package:dizzybank_mobile/models/user_model.dart';

class Account {
  final int id;
  final String uuid;
  final User owner;
  final String accountName;
  final String accountNum;
  final String accountBalance;

  Account({
    this.id,
    this.uuid,
    this.owner,
    this.accountName,
    this.accountNum,
    this.accountBalance,
  });
}

// Me - current user
final User currentUser = User(
  id: 1,
  uuid: 'abc312',
  name: 'Brad Madigan',
  email: 'bradmadigan@gmail.com',
);

// Some Accounts
List<Account> accounts = [
  Account(
    id: 1,
    uuid: 'abc123',
    owner: currentUser,
    accountName: 'Unlimited Checking Account',
    accountNum: '321-32323',
    accountBalance: '323.00',
  ),
  Account(
    id: 2,
    uuid: 'abc656',
    owner: currentUser,
    accountName: 'Daily Savings Account',
    accountNum: '342-65323',
    accountBalance: '181.89',
  ),
];
