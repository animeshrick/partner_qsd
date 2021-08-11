import 'package:flutter/material.dart';
import 'package:partner_qsd/util/const.dart';

import 'innsider_job_tabs/details_page.dart';
import 'innsider_job_tabs/payment.dart';

class JobsDetails extends StatefulWidget {
  const JobsDetails({Key? key}) : super(key: key);

  @override
  _JobsDetailsState createState() => _JobsDetailsState();
}

class _JobsDetailsState extends State<JobsDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: mainColor,
          ),
          // actions: [
          //   IconButton(
          //       onPressed: () {},
          //       icon: Icon(
          //         (Icons.more_vert),
          //         color: black,
          //       ))
          // ],
          backgroundColor: white,
          bottom: TabBar(
            indicatorColor: mainColor,
            labelColor: mainColor,
            unselectedLabelColor: grey,
            unselectedLabelStyle: TextStyle(color: grey),
            tabs: const [
              Text('Details\n'),
              Text('Payment\n'),
            ],
          ),
          // title: const Text('Tabs Demo'),
        ),
        body: const TabBarView(
          children: [DetailsPage(), Payment()],
        ),
      ),
    );
  }
}
