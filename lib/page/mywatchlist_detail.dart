import 'package:counter_7/drawer.dart';
import 'package:counter_7/page/mywatchlist_page.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyWatchDetail extends StatefulWidget {
  const MyWatchDetail({super.key, required this.myWatchList});

  final MyWatchList myWatchList;

  @override
  State<MyWatchDetail> createState() => _MyWatchDetailState();
}

class _MyWatchDetailState extends State<MyWatchDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: const MyDrawer(),
      body: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(20.0),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.myWatchList.fields.title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                            text: 'Release Date: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                '${DateFormat.yMMMd().format(widget.myWatchList.fields.releaseDate)}\n'),
                        const TextSpan(
                            text: 'Rating: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: '${widget.myWatchList.fields.rating}/5\n'),
                        const TextSpan(
                            text: 'Status: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: (widget.myWatchList.fields.watched)
                                ? "Watched\n"
                                : "Not Watched\n"),
                        const TextSpan(
                            text: 'Review: \n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: "${widget.myWatchList.fields.review}\n"),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyWatchListPage()),
                      );
                    },
                    child: const SizedBox(
                        height: 40,
                        width: 300,
                        child: Center(
                          child: Text(
                            "Back",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))),
              ]),
            ],
          )),
    );
  }
}
