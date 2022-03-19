import 'package:flutter/material.dart';

class DailyStockChartScreen extends StatelessWidget {
  const DailyStockChartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TSLA")
      ),

      body: Column(
        children: [

          _createTopView("Tesla Inc", "33,308,400", "(+25%)", r"$905.39", "+33.79", "+(3.88%)"),
          _createPriceChartView(),
          _createVolumeChartView(),

        ],
      ),
    );
  }

  Expanded _createVolumeChartView() {
    return Expanded(
      flex: 3,
      child: Container(color: Colors.blue),
    );
  }

  Expanded _createPriceChartView() {
    return Expanded(
        flex: 7,
      child: Container(color: Colors.white),
    );
  }

  Expanded _createTopView(String companyName, String volume, String volumePercentageChange, String price, String priceChange, String pricePercentageChange) {

    return Expanded(
      flex: 1,
      child:
      // _attemptOneAtCreatingTopView(companyName, price, volume, volumePercentageChange, priceChange, pricePercentageChange),
        Row(
          children: [
            Container(width: 25, color: Colors.green),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      // SizedBox()
                      //TODO: When coming back try and wrap text below in sizedBox to make it align with lower text
                      Text("Top Text"),
                      Spacer(),
                      Text("Bottom Text")
                    ],
                  ),
                )
          ],
        )
    );
  }

  Container _attemptOneAtCreatingTopView(String companyName, String price, String volume, String volumePercentageChange, String priceChange, String pricePercentageChange) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          children: [

            Row(
              children: [
                Text(companyName),
                Expanded(
                    child: Container()),
                Text(price),
              ],
            ),
            Expanded(child: Container()),
            Row(
              children: [
                Text(volume),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(volumePercentageChange),
                ),
                Expanded(child: Container()),
                Text(priceChange),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(pricePercentageChange),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
