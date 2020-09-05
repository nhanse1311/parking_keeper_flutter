import 'package:flutter/material.dart';
import 'package:parking_keeper/fragment/profile_fragment.dart';

class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30, left: 15, right: 10),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Xin chào,',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      'Nguyễn Thanh Nhàn!',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Parking Around \nFor Keeper',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.6,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: new BoxDecoration(
//                          border: Border.all(
//                              color: Colors.white, width: 10),
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(
                                    "https://miro.medium.com/max/3840/1*l2AFc33U7grIeMML0a0unQ.jpeg")))),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 45, bottom: 20, left: 20, right: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.blue),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: ListTile(
                        leading: Image.asset('assets/images/ic_scan.jpg'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.red,
                        ),
                        title: Center(
                          child: Text(
                            'Quét mã',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // onTap: () => {
                        //   Navigator.pushNamed(context, QRCode.routeName)
                        // }, // write function in here
                      ),
                    ),
                    elevation: 5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: ListTile(
                        leading:
                        Image.asset('assets/images/ic_dashboard.jpg'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                        ),
                        title: Center(
                          child: Text(
                            'Biểu đồ',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        onTap: () => {}, // write function in here
                      ),
                    ),
                    elevation: 5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/ic_report.jpg',
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                        ),
                        title: Center(
                          child: Text(
                            'Báo cáo',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        onTap: () => {}, // write function in here
                      ),
                    ),
                    elevation: 5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/ic_transaction.jpg',
                          height: 200,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.orange,
                        ),
                        title: Center(
                          child: Text(
                            'Giao dịch',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        onTap: () => {}, // write function in here
                      ),
                    ),
                    elevation: 5,
                  ),
                ),
                // Container(
                //   child: Card(
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(15)),
                //     child: Padding(
                //       padding: EdgeInsets.only(top: 5, bottom: 5),
                //       child: ListTile(
                //         leading: Image.asset('assets/images/ic_personal.png'),
                //         trailing: Icon(
                //           Icons.arrow_forward_ios,
                //           color: Colors.black,
                //         ),
                //         // onTap: () => {
                //         //   Navigator.pushNamed(context, Profile.routeName)
                //         // },
                //         title: Center(
                //           child: Text(
                //             'Cá nhân',
                //             style: TextStyle(
                //                 fontSize: 20, fontWeight: FontWeight.bold),
                //           ),
                //         ),
                //       ),
                //     ),
                //     elevation: 5,
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    ),],);
  }
}