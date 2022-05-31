import 'package:consumer_end/logic/user_logic.dart';
import 'package:consumer_end/objects%20and%20constants/constants.dart';
import 'package:consumer_end/objects%20and%20constants/rental_history_item.dart';
import 'package:consumer_end/objects%20and%20constants/user.dart';
import 'package:flutter/material.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({Key? key}) : super(key: key);

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  @override
  Widget build(BuildContext context) {
    final User user = UserLogic.getUser();
    List<RentalHistoryItem> list = user.rentalHistory;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment History'),
        backgroundColor: primaryAppBarColor,
      ),
      backgroundColor: primaryBackgroundColor,
      body: Center(
        child: ListView.builder(
            itemBuilder: (context,index) {
              if (list.isEmpty){
                //the list is empty
                return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: const [CircularProgressIndicator(),Text('No history present yoo')],),);
              }else{
                //the list is populated
                return Card(
                  child: ListTile(
                    leading: Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width/100), child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                       const Flexible(child: Text('Apt')),
                        Flexible(child: Text(list[index].unitNumber,style: const TextStyle(fontSize: 25),)),
                      ],
                    ),),
                    title: Text(list[index].unitBuilding),
                    subtitle: Text('\$${list[index].amountPayed}'),
                    trailing: Text(list[index].date),
                  ),
                );
              }
            },
          itemCount: list.length,

        ),
      ),
    );
  }
}
