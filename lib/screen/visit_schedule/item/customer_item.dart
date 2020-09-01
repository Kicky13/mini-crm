import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerItem extends StatelessWidget {
  final String kdCustomer;
  final String customer;
  final String pemilik;
  final String phone;
  final String phone2;
  final String address;
  final double paddingCustEnd;
  final bool devider;

  CustomerItem({
    this.kdCustomer,
    this.customer,
    this.pemilik,
    this.phone,
    this.phone2,
    this.address,
    this.paddingCustEnd,
    this.devider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "${kdCustomer ?? ""}: ${customer ?? ""}",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900],
                      fontSize: 15),
                ),
              ),
              SizedBox(width: paddingCustEnd ?? 0,)
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5, top: 2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(height: 50, image: AssetImage("assets/images/shop.png")),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${pemilik ?? "-"}",
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "${phone ?? "-"}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          "${address ?? "-"}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: devider
          ? BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 0.5, color: Colors.grey[400])))
          : BoxDecoration(),
    );
  }
}
