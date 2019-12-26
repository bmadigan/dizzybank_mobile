import 'package:dizzybank_mobile/models/account_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class AccountsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
          itemCount: accounts.length,
          itemBuilder: (BuildContext context, int index) {
            final Account account = accounts[index];

            return Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(new Radius.circular(6.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset('assets/images/wordmark-color.svg'),
                    SizedBox(width: 25.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(account.accountName,
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                account.accountNum,
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 14.0,
                                ),
                              ),
                              SizedBox(width: 50.0),
                              Text(
                                '\$${account.accountBalance}',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
