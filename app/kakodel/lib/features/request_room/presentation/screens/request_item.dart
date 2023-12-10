import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/theme.dart';
import '../../data/models/request_room/request_room_model.dart';
import '../bloc/request_room_bloc.dart';
import '../bloc/request_room_event.dart';
import '../shared/custom_button.dart';

class RequestItem extends StatelessWidget {
  final String status;
  final RequestRoom requestRoom;

  const RequestItem({
    Key? key,
    required this.status,
    required this.requestRoom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Request ID: ${requestRoom.id}',
                style: TextStyle(
                  color: dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Status: ${requestRoom.status}',
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Room: ${requestRoom.room.name}',
            style: TextStyle(
              color: dark.withOpacity(0.5),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Request On : ${requestRoom.createdAt}',
            style: TextStyle(
              color: dark.withOpacity(0.5),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Start Date: ${requestRoom.startDate}',
            style: TextStyle(
              color: dark.withOpacity(0.5),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'End Date: ${requestRoom.endDate}',
            style: TextStyle(
              color: dark.withOpacity(0.5),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          requestRoom.status == 'Pending'
              ? CustomButton(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Cancel Request',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    //show dialog
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Cancel Request'),
                          content: const Text(
                              'Are you sure you want to cancel this request?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                AutoRouter.of(context).pop();
                              },
                              child: const Text('No'),
                            ),
                            TextButton(
                              onPressed: () {
                                if (status == 'All Requests') {
                                  context.read<RequestRoomBloc>().add(
                                      RequestRoomEvent.cancelRequest(
                                          '', requestRoom));
                                } else {
                                  context.read<RequestRoomBloc>().add(
                                      RequestRoomEvent.cancelRequest(
                                          status, requestRoom));
                                }
                                AutoRouter.of(context).pop();
                              },
                              child: const Text('Yes'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
