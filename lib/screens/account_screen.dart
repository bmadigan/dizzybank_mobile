import 'package:flutter/material.dart';
import 'package:dizzybank_mobile/models/account_model.dart';

class AccountScreen extends StatefulWidget {
  final Account account;

  AccountScreen({this.account});

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(widget.account.accountName),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      body: Text('account screen'),
    );
  }
}
