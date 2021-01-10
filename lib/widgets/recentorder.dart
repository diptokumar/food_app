import 'package:flutter/material.dart';
import 'package:food_app/data/data.dart';
import 'package:food_app/models/order.dart';

class RecentOrders extends StatelessWidget {
  _buildRecent_Orders(BuildContext context, Order order) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 320.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 1.0, color: Colors.grey[200])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    image: AssetImage(order.food.imageUrl),
                    height: 100.00,
                    width: 100.00,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.food.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(order.restaurant.name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            overflow: TextOverflow.ellipsis),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          order.date,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            width: 48.0,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30.0)),
            child: IconButton(
              icon: Icon(Icons.add),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {
                print('hello');
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Recent Orders',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2),
          ),
        ),
        Container(
          height: 120.0,
          //color: Colors.blue,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 10.00),
              scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders.length,
              itemBuilder: (context, index) {
                Order order = currentUser.orders[index];
                return _buildRecent_Orders(context, order);
              }),
        )
      ],
    );
  }
}
