import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:partner_qsd/view/insider/home/inside_home_tabs/account_settings/account_settings.dart';

import 'job_history/job_history_page.dart';
import 'pan_bank_gst_details/pan_bank_gst_details.dart';
import 'wallet_pages/wallet_dashoard.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 0.11.sw,
                          backgroundColor: Colors.black12,
                          child: CircleAvatar(
                            radius: 0.1.sw,
                            foregroundColor: black,
                            backgroundImage: const NetworkImage(profileImg),
                          ),
                        ),
                        Positioned(
                            // left: 0.13.sw,
                            // top: 0.07.sh,
                            left: 50,
                            top: 50,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.camera_alt, color: grey)))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText('★ 4.67 ', mainColor, 20),
                        const SizedBox(
                          height: 7,
                        ),
                        customText('2.1k Ratings', grey, 18),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customText('Partner name', commonColor, 23,
                  fontWeight: FontWeight.bold),
              RichText(
                text: TextSpan(
                  style:
                      const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'name2@Gmail.com ', style: TextStyle(color: grey)),
                    TextSpan(text: ' +9768766868', style: TextStyle(color: grey)),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              customText('Jobs', commonColor, 23, fontWeight: FontWeight.bold),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Get.to(()=>const JobHistoryPage());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.history,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        customText('Job history', commonColor, 17),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: mainColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () => Get.to(() => const WalletDashoard()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.wallet_giftcard,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        customText('Wallet credit', commonColor, 17),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: mainColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              customText('Account', commonColor, 23, fontWeight: FontWeight.bold),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const PanBankGstDetails());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.info_outline,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        customText('GST, PAN and Bank Details', commonColor, 17),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: mainColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const AccountSetting());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.person_outline),
                        const SizedBox(
                          width: 20,
                        ),
                        customText('Account settings', commonColor, 17),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: mainColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
