import 'package:cwi/utils/colors.dart';
import 'package:cwi/utils/extensions/context_extension.dart';
import 'package:cwi/utils/image.dart';
import 'package:cwi/utils/size.dart';
import 'package:cwi/utils/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ParameterReading extends StatefulWidget {
  const ParameterReading({super.key});

  @override
  State<ParameterReading> createState() => _ParameterReadingState();
}

class _ParameterReadingState extends State<ParameterReading> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil.width(4), vertical: ScreenUtil.width(2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Parameter Reading',
                  style: context.titleMedium!
                      .copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: ScreenUtil.height(0.5)),
          child: Card(
            elevation: 6,
            child: Container(
              height: ScreenUtil.height(10),
              width: ScreenUtil.width(95),
              decoration: BoxDecoration(
                color: MyColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: MyColors.green, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'PID Code:',
                                  style: TextStyle(
                                      fontSize: 9,
                                      color: MyColors.blueColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '27',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: MyColors.blackColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Engine Temperature',
                                style: context.titleSmall!),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(reverse),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(left: ScreenUtil.width(5)),
                              child: GestureDetector(
                                onTap: () {
                                  showBottomListModal(context);
                                },
                                child: Image.asset(
                                  editIcon,
                                  height: ScreenUtil.height(4),
                                  width: ScreenUtil.width(6),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Min: ___________',
                          style: context.titleSmall,
                        ),
                        Container(
                          width: ScreenUtil.width(15),
                          height: ScreenUtil.height(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: MyColors.blueColor, width: 1),
                          ),
                          child: const Text(
                            textAlign: TextAlign.center,
                            '102 °C',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Max: ___________',
                          style: context.titleSmall,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        // -------------yellow--------------------------
        Padding(
          padding: EdgeInsets.symmetric(vertical: ScreenUtil.height(0.5)),
          child: Card(
            elevation: 6,
            child: Container(
              height: ScreenUtil.height(10),
              width: ScreenUtil.width(95),
              decoration: BoxDecoration(
                color: MyColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: MyColors.red, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'PID Code:',
                                  style: TextStyle(
                                      fontSize: 9,
                                      color: MyColors.blueColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '73',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: MyColors.blackColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Coolant Temperature',
                                style: context.titleSmall!),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(left: ScreenUtil.width(5)),
                              child: GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  refreshIcon,
                                  height: ScreenUtil.height(4),
                                  width: ScreenUtil.width(6),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Min: ___________',
                          style: context.titleSmall,
                        ),
                        Container(
                          width: ScreenUtil.width(15),
                          height: ScreenUtil.height(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: MyColors.blueColor, width: 1),
                          ),
                          child: const Text(
                            textAlign: TextAlign.center,
                            '_',
                          ),
                        ),
                        Text(
                          'Max: ___________',
                          style: context.titleSmall,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        // ---------------------yellow--------------------
        Padding(
          padding: EdgeInsets.symmetric(vertical: ScreenUtil.height(0.5)),
          child: Card(
            elevation: 6,
            child: Container(
              height: ScreenUtil.height(10),
              width: ScreenUtil.width(95),
              decoration: BoxDecoration(
                color: MyColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: MyColors.yellow, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'PID Code:',
                                  style: TextStyle(
                                      fontSize: 9,
                                      color: MyColors.blueColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '27',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: MyColors.blackColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Engine Temperature',
                                style: context.titleSmall!),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            showBottomListModal(context);
                          },
                          child: Image.asset(
                            editIcon,
                            height: ScreenUtil.height(4),
                            width: ScreenUtil.width(6),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Min: ___________',
                          style: context.titleSmall,
                        ),
                        Container(
                          width: ScreenUtil.width(15),
                          height: ScreenUtil.height(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: MyColors.blueColor, width: 1),
                          ),
                          child: const Text(
                            textAlign: TextAlign.center,
                            '92 °C',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Max: ___________',
                          style: context.titleSmall,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: ScreenUtil.height(2)),
          height: ScreenUtil.height(6),
          width: ScreenUtil.width(30),
          decoration: BoxDecoration(
            color: MyColors.blueColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Confirm',
                textAlign: TextAlign.center,
                style: context.titleSmall!.copyWith(
                    color: MyColors.whiteColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}

// ------------------------------bottom modal ------------------------------
void showBottomListModal(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
    ),
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(ScreenUtil.width(6)),
            height: ScreenUtil.height(40),
            decoration: const BoxDecoration(
              color: MyColors.darkColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        downArrow,
                        height: ScreenUtil.height(2),
                        width: ScreenUtil.width(12),
                      ),
                      Text(
                        'Engine Temperature',
                        style: context.titleLarge!
                            .copyWith(color: MyColors.whiteColor),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: ScreenUtil.height(2)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Min: 92°C',
                              style: context.titleMedium!
                                  .copyWith(color: MyColors.whiteColor),
                            ),
                            Text(
                              'Current: 100°C',
                              style: context.titleMedium!
                                  .copyWith(color: MyColors.whiteColor),
                            ),
                            Text(
                              'Max: 105°C',
                              style: context.titleMedium!
                                  .copyWith(color: MyColors.whiteColor),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: ScreenUtil.height(2)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Enter New Value',
                              style: context.titleMedium!
                                  .copyWith(color: MyColors.whiteColor),
                            ),
                            Container(
                              width: ScreenUtil.width(50),
                              height: ScreenUtil.height(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: MyColors.whiteColor),
                              child: const TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 15)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: ScreenUtil.height(5)),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: ScreenUtil.height(2)),
                          height: ScreenUtil.height(5),
                          width: ScreenUtil.width(90),
                          decoration: BoxDecoration(
                            color: MyColors.blueColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Confirm',
                                textAlign: TextAlign.center,
                                style: context.titleSmall!.copyWith(
                                    color: MyColors.whiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
