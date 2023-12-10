import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../routes/app_routers.gr.dart';
import '../../../../shared/theme.dart';
import '../../data/models/credit/credit_model.dart';

class CreditItem extends StatelessWidget {
  final Credit credit;
  const CreditItem(this.credit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).push(CreditCheckoutScreen(credit: credit));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                credit.nominal,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  color: dark,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Rp. ${credit.price}',
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  color: dark,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
