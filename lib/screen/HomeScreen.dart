import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _TopPart(),
              _BottomPart(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopPart extends StatelessWidget {
  const _TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Since we met',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'flower',
              fontSize: 70.0,
            ),
          ),
          Column(
            children: [
              Text(
                '우리 처음 만난 날',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'nanum',
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0,
                ),
              ),
              Text(
                '2021.11.23',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'nanum',
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          IconButton(
              iconSize: 60.0,
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.white,
                        height: 300.0,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (DateTime date) {
                            print(date);
                          },
                        ),
                      ),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              )),
          Text(
            'D+1',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'nanum',
                fontSize: 50.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        'asset/img/background.jpg',
      ),
    );
  }
}