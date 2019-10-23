import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('결과'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: resultTextStyle,
                  ),
                  Text(
                    '26.7',
                    style: BMITextStyle,
                  ),
                  Text(
                    '살빼세요',
                    style: bodyTextStyle,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          '다시 계산하기',
                          style: kLargeButtonTextStyle,
                        ),
                      ),
                      color: bottomContainerColor,
                      padding: EdgeInsets.only(bottom: 20.0),
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: bottomContainerHeight,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
