import 'package:crypto_signal/constants/constants.dart';
import 'package:flutter/material.dart';

class SignalSpotItem extends StatefulWidget {
  const SignalSpotItem({super.key});

  @override
  State<SignalSpotItem> createState() => _SignalSpotItemState();
}

class _SignalSpotItemState extends State<SignalSpotItem> {
  @override
  bool isExpanded = false;
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(52, 69, 69, 69),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 12,
                right: 8,
                bottom: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 30,
                        child: Image.asset('assets/images/btc.png'),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "BTC/USDT",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Jan 09, 02:41 AM",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "355%",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: customColors.primaryGreen800),
                      ),
                      Icon(
                        Icons.trending_up,
                        color: customColors.primaryGreen800,
                        size: 15,
                      )
                    ],
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 54),
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //         children: [
                  //           Container(
                  //             height: 25,
                  //             decoration: BoxDecoration(
                  //               border: Border.all(
                  //                 color: customColors.primaryGreen800,
                  //               ),
                  //               borderRadius: BorderRadius.all(
                  //                 Radius.circular(8),
                  //               ),
                  //             ),
                  //             child: Padding(
                  //               padding:
                  //                   const EdgeInsets.symmetric(horizontal: 10),
                  //               child: Center(
                  //                 child: Text(
                  //                   "Low risk",
                  //                   style: TextStyle(
                  //                     fontSize: 12,
                  //                     color: customColors.primaryGreen800,
                  //                     fontWeight: FontWeight.w500,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //           const SizedBox(width: 8),
                  //           Container(
                  //             height: 25,
                  //             decoration: BoxDecoration(
                  //               border: Border.all(
                  //                 color: customColors.primaryGreen800,
                  //               ),
                  //               color: customColors.primaryGreen800,
                  //               borderRadius: BorderRadius.all(
                  //                 Radius.circular(8),
                  //               ),
                  //             ),
                  //             child: Padding(
                  //               padding:
                  //                   const EdgeInsets.symmetric(horizontal: 10),
                  //               child: Center(
                  //                 child: Text(
                  //                   "Hold 16718",
                  //                   style: TextStyle(
                  //                     fontSize: 12,
                  //                     color: customColors.greyScale300,
                  //                     fontWeight: FontWeight.w500,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //           const SizedBox(width: 8),
                  //           Container(
                  //             height: 25,
                  //             decoration: BoxDecoration(
                  //               color: Colors.red,
                  //               borderRadius: BorderRadius.all(
                  //                 Radius.circular(8),
                  //               ),
                  //             ),
                  //             child: Padding(
                  //               padding:
                  //                   const EdgeInsets.symmetric(horizontal: 10),
                  //               child: Center(
                  //                 child: Text(
                  //                   "Stop 16516",
                  //                   style: TextStyle(
                  //                     fontSize: 12,
                  //                     color: customColors.greyScale300,
                  //                     fontWeight: FontWeight.w500,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            child: ExpansionPanelList(
              elevation: 0,
              expansionCallback: (int index, bool isExpanded1) {
                setState(() {
                  isExpanded = !isExpanded1;
                });
              },
              children: [
                ExpansionPanel(
                    backgroundColor: Color.fromARGB(52, 69, 69, 69),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return SizedBox(
                        height: 30,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Current Price",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "17000",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "1.77 %",
                              style: TextStyle(
                                color: customColors.primaryGreen800,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    body: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          child: ListTile(
                            title: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Entry Price :",
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            ),
                            trailing: Text(
                              "16800",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          child: ListTile(
                            title: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Stop Loss :",
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            ),
                            trailing: Text(
                              "16100",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          child: ListTile(
                            title: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Target 1",
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.task_alt_outlined,
                                  color: customColors.primaryGreen800,
                                  size: 15,
                                )
                              ],
                            ),
                            trailing: Text(
                              "16800",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          child: ListTile(
                            title: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Target 1",
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.task_alt_outlined,
                                  color: customColors.primaryGreen800,
                                  size: 15,
                                )
                              ],
                            ),
                            trailing: Text(
                              "16800",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          child: ListTile(
                            title: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Target 1",
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.schedule,
                                  color: customColors.orange,
                                  size: 15,
                                )
                              ],
                            ),
                            trailing: Text(
                              "16800",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Divider(
                          color: customColors.greyScale600,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 10),
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: customColors.primaryGreen900,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18)),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.query_stats,
                                      size: 15,
                                    ),
                                    const SizedBox(width: 5),
                                    Text("Analysis",
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: customColors.primaryGreen900,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18)),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.show_chart,
                                      size: 15,
                                    ),
                                    const SizedBox(width: 5),
                                    Text("Chart",
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: customColors.primaryGreen900,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18)),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.share,
                                      size: 15,
                                    ),
                                    const SizedBox(width: 5),
                                    Text("Share",
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    isExpanded: isExpanded),
              ],
            ),
          ),
        )
      ],
    );
  }
}
