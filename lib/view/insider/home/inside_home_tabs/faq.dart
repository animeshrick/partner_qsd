import 'package:flutter/material.dart';
import 'package:partner_qsd/util/const.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              validator: (val) {},
              decoration: InputDecoration(
                  hintText: 'Search with keyword',
                  prefixIcon: const Icon(Icons.search),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  fillColor: grey),
            ),
            ListView.separated(
              primary: false,
              shrinkWrap: true,
              separatorBuilder: (_, __) => const SizedBox(
                height: 15,
              ),
              itemCount: 5,
              itemBuilder: (_, int i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    customText('1. Why do we use it?', black, 20,
                        fontWeight: FontWeight.bold),
                    const SizedBox(
                      height: 10,
                    ),
                    customText(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content',
                        grey,
                        17),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
