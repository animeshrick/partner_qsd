import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:partner_qsd/api/api_call.dart';
import 'package:partner_qsd/model/category_models/category_model.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home/dashboard.dart';

class ProfessionChoose extends StatefulWidget {
  const ProfessionChoose({Key? key}) : super(key: key);

  @override
  _ProfessionChooseState createState() => _ProfessionChooseState();
}

class _ProfessionChooseState extends State<ProfessionChoose> {
  final _catList = <CategoriesData>[].obs;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _chooseProfession();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      // appBar: AppBar(
      //   elevation: 1,
      //   backgroundColor: white,
      //   iconTheme: IconThemeData(
      //     color: mainColor,
      //   ),
      // ),
      bottomNavigationBar: Container(
        color: commonColor,
        height: 70,
        child: InkWell(
          onTap: () {
            Get.to(() => const Dashboard());
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customText('Proceed', white, 18, fontWeight: FontWeight.bold),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: white,
                size: 20,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.04.sh,
              ),
              customText('What is your profession?', textColor, 20,
                  fontWeight: FontWeight.bold),
              const SizedBox(
                height: 20,
              ),
    Obx(()=>          ListView.separated(
                primary: false,
                shrinkWrap: true,
                separatorBuilder: (_, __) => const SizedBox(
                  height: 15,
                ),
                itemCount: _catList.length,
                itemBuilder: (_, int i) {
                  return Card(
                    color: mainColor,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(_catList[i].categoryName, white, 15),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white.withOpacity(0.2),
                                child: Icon(
                                  Icons.done,
                                  color: white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }

  void _chooseProfession() async {
    showProgress(context);
    _catList.value = (await networkcallService.getProfessionCat())!;
    hideProgress(context);
  }
}
