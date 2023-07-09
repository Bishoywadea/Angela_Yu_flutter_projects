import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'dart:convert';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  List<String> list = [];

  String selectedChoice = currenciesList[0];

  double costOfBit = -1;
  double costOfETH = -1;
  double costOfLTC = -1;

  List<DropdownMenuItem<String>> getMoneyList() {
    List<DropdownMenuItem<String>> list = [];
    for (int i = 0; i < currenciesList.length; i++) {
      list.add(DropdownMenuItem<String>(
          child: Text(currenciesList[i]), value: currenciesList[i]));
    }
    return list;
  }

  void updateUI() async {
    CoinData coinDate = CoinData();
    var dataOfBit = await coinDate.internet('BTC', selectedChoice);
    var dataOfETH = await coinDate.internet('ETH', selectedChoice);
    var dataOfLTC = await coinDate.internet('LTC', selectedChoice);

    setState(() {
      costOfBit = dataOfBit['rate'];
      costOfETH = dataOfETH['rate'];
      costOfLTC = dataOfLTC['rate'];
      print(costOfBit);
    });
  }

  @override
  void initState() {
    updateUI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text('🤑 Coin Ticker'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MyCard(
              crypto: 'BTC', cost: costOfBit, selectedChoice: selectedChoice),
          MyCard(
              crypto: 'LTC', cost: costOfLTC, selectedChoice: selectedChoice),
          MyCard(
              crypto: 'ETH', cost: costOfETH, selectedChoice: selectedChoice),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton(
              value: selectedChoice,
              icon: Icon(Icons.attach_money),
              items: getMoneyList(),
              onChanged: (newValue) {
                selectedChoice = newValue!;
                print(selectedChoice);
                updateUI();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.cost,
    required this.selectedChoice,
    required this.crypto,
  });

  final double cost;
  final String selectedChoice;
  final String crypto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $crypto = $cost $selectedChoice',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
