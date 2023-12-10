import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../shared/theme.dart';
import '../../domain/entities/request_room_entity.dart';
import '../bloc/room_detail_bloc.dart';
import '../bloc/room_detail_event.dart';
import '../bloc/room_detail_state.dart';
import '../shared/custom_filled_button.dart';
import '../shared/custom_text_form_field.dart';

class RoomDetailScreen extends StatefulWidget {
  final int roomId;
  static const routeName = '/room-detail';
  const RoomDetailScreen({super.key, required this.roomId});

  @override
  State<RoomDetailScreen> createState() => _RoomDetailScreenState();
}

class _RoomDetailScreenState extends State<RoomDetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<RoomDetailBloc>().add(
          GetRoomDetailEvent(roomId: widget.roomId),
        );
  }

  final _formKey = GlobalKey<FormState>();
  DateTime? _startDate;
  DateTime? _endDate;
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();

  Future<TimeOfDay> _pickTime(BuildContext context) async {
    final TimeOfDay? t = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    return t!;
  }

  Future<DateTime> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _startDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _startDate) {
      setState(() {
        _startDate = picked;
      });
    }
    return picked!;
  }

  Future<DateTime> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _endDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _endDate) {
      setState(() {
        _endDate = picked;
      });
    }
    return picked!;
  }

  Future<void> _pickStartDateTime(BuildContext context) async {
    final DateTime pickedDate = await _selectStartDate(context);
    final TimeOfDay pickedTime = await _pickTime(context);
    setState(() {
      _startDateController.text = "${pickedDate.toLocal()}".split(' ')[0] +
          " " +
          "${pickedTime.format(context)}";
    });
  }

  Future<void> _pickEndDateTime(BuildContext context) async {
    final DateTime pickedDate = await _selectEndDate(context);
    final TimeOfDay pickedTime = await _pickTime(context);
    setState(() {
      _endDateController.text = "${pickedDate.toLocal()}".split(' ')[0] +
          " " +
          "${pickedTime.format(context)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<RoomDetailBloc, RoomDetailState>(
        listener: (context, state) {
          if (state is RoomDetailRequestedState) {
            EasyLoading.showSuccess(state.message);
          }
        },
        listenWhen: (previous, current) {
          if (current is RoomDetailRequestedState) {
            return true;
          }
          return false;
        },
        builder: (context, state) {
          if (state is RoomDetailErrorState) {
            return Scaffold(
              body: Center(
                child: Text(
                  "Ada kesalahan pengambilan data",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: dark,
                  ),
                ),
              ),
            );
          } else if (state is RoomDetailLoadedState) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: dark,
                  ),
                  onPressed: () {
                    AutoRouter.of(context).pop();
                  },
                ),
              ),
              body: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Expanded(
                    child: Column(
                      children: [
                        // room image
                        Container(
                          height: 218,
                          width: 311,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: softGray,
                            ),
                            image: DecorationImage(
                              image: NetworkImage(state.room.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // room name
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            state.room.name,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: dark,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // room description
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            state.room.description,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: dark,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              // reason input
                              CustomTextFormField(
                                hintText: "Keterangan Keperluan",
                                controller: _descriptionController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Keterangan Keperluan tidak boleh kosong";
                                  }
                                  return null;
                                },
                                onSaved: (value) =>
                                    _descriptionController.text = value!,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // start date input
                              CustomTextFormField(
                                hintText: "Tanggal Mulai",
                                controller: _startDateController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Tanggal Mulai tidak boleh kosong";
                                  }
                                  return null;
                                },
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: softGray,
                                  ),
                                  onPressed: () async {
                                    _pickStartDateTime(context);
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // end date input
                              CustomTextFormField(
                                hintText: "Tanggal Selesai",
                                controller: _endDateController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Tanggal Selesai tidak boleh kosong";
                                  }
                                  return null;
                                },
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: softGray,
                                  ),
                                  onPressed: () async {
                                    _pickEndDateTime(context);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              bottomSheet: Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: CustomFilledButton(
                  height: 50,
                  gradient: gradient,
                  text: "Pesan Ruangan",
                  icon: const Icon(
                    Icons.bookmark_add_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      requestRoom(state, context);
                    }
                  },
                ),
              ),
            );
          } else {
            return FutureBuilder(
              future: Future.delayed(const Duration(seconds: 2)),
              builder: (context, snapshot) {
                return Scaffold(
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircularProgressIndicator(),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Loading...",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: dark,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  void requestRoom(RoomDetailLoadedState state, BuildContext context) {
    RequestRoomEntity requestRoomEntity = RequestRoomEntity(
      room: state.room,
      description: _descriptionController.text,
      startDate: _startDate!,
      endDate: _endDate!,
    );
    BlocProvider.of<RoomDetailBloc>(context)
        .add(RequestRoomEvent(requestRoomEntity));
  }
}
