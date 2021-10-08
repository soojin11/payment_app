import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/widgets/buttons.dart';
import 'package:flutter_payment_app/widgets/pay_button.dart';
import 'package:get/get.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 85, left: 30, right: 30),
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/paymentbackground.png"),
        )),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: height * 0.14,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage("images/success.png"))),
            ),
            Text(
              "Success !",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.mainColor),
            ),
            Text(
              "Payment is completed for 2 bills",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.idColor),
            ),
            SizedBox(height: height * 0.045),
            Container(
              height: 160,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 2, color: Colors.grey.withOpacity(0.5))),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (_, incex) {
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 15, left: 20, bottom: 10),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.green),
                                child: Icon(Icons.done,
                                    size: 30, color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "KenGen Power",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.mainColor),
                                  ),
                                  SizedBox(height: 10),
                                  Text("ID 2387497",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.idColor))
                                ],
                              ),
                              SizedBox(width: 20),
                              Column(
                                children: [
                                  Text("",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor
                                              .mainColor)), //공간주기위해 (이거 말고 방법 없나)
                                  SizedBox(height: 10),
                                  Text("\$1248.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.mainColor)),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.grey.withOpacity(0.5),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            Column(
              children: [
                Text("Total Amount",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColor.idColor,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text("\$2840.00",
                    style: TextStyle(
                        fontSize: 30,
                        color: AppColor.mainColor,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            SizedBox(
              height: height * 0.18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButtons(
                  icon: Icons.share_sharp,
                  iconColor: Colors.white,
                  backgroundColor: AppColor.mainColor,
                  onTap: () {},
                  text: "share",
                  textColor: Colors.black,
                ),
                SizedBox(
                  width: width * 0.1,
                ),
                AppButtons(
                  icon: Icons.print_outlined,
                  iconColor: Colors.white,
                  backgroundColor: AppColor.mainColor,
                  onTap: () {},
                  text: "print",
                  textColor: Colors.black,
                ),
              ],
            ),
            SizedBox(height: height * 0.04),
            PayButton(
              text: "Done",
              backgroundColor: Colors.white,
              onTap: () {
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
