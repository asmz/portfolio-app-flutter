import 'package:flutter/material.dart';
import 'package:portfolio_app_flutter/models/account/account.dart';
import 'package:portfolio_app_flutter/ui/profile/widgets/account_item.dart';

class AccountList extends StatelessWidget {
  const AccountList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32, right: 32, bottom: 30),
      child: Column(
        spacing: 16,
        children: [
          for (final account in Account.getAccountList())
            AccountItem(account: account),
        ],
      ),
    );
  }
}
