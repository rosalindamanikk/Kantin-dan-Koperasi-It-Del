import 'package:auto_route/auto_route.dart';
import 'package:delmart/features/room/data/models/room/room_model.dart';
import 'package:flutter/material.dart';

import '../../../../routes/app_routers.gr.dart';
import '../../../../shared/theme.dart';

class RoomItem extends StatefulWidget {
  final RoomList roomList;
  const RoomItem({
    Key? key,
    required this.roomList,
  }) : super(key: key);

  @override
  State<RoomItem> createState() => _RoomItemState();
}

class _RoomItemState extends State<RoomItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: GridView.builder(
        itemCount: widget.roomList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              AutoRouter.of(context)
                  .push(RoomDetailScreen(roomId: widget.roomList[index].id));
            },
            child: Container(
              // disable if room is not available
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // image room
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(widget.roomList[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.roomList[index].name,
                    style: TextStyle(
                      color: dark,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
