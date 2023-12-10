import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/theme.dart';
import '../bloc/credit_bloc.dart';
import '../bloc/credit_state.dart';
import '../bloc/credit_event.dart';
import '../shared/custom_text_form_field.dart';
import 'credit_item.dart';

const List<String> _Telkomsel = [
  '0811',
  '0812',
  '0813',
  '0821',
  '0822',
  '0823',
  '0852',
  '0853',
  '0851',
];

const List<String> _Indosat = [
  '0814',
  '0815',
  '0816',
  '0855',
  '0856',
  '0857',
  '0858',
];

const List<String> _XL = [
  '0817',
  '0818',
  '0819',
  '0859',
  '0877',
  '0878',
];

const List<String> _Axis = [
  '0831',
  '0832',
  '0838',
];

const List<String> _Three = [
  '0895',
  '0896',
  '0897',
  '0898',
  '0899',
];

const List<String> _Smartfren = [
  '0881',
  '0882',
  '0883',
  '0884',
  '0885',
  '0886',
  '0887',
  '0888',
  '0889',
];

const List<String> _Tri = [
  '0895',
  '0896',
  '0897',
  '0898',
  '0899',
];

class CreditScreen extends StatefulWidget {
  static const routeName = '/credit';
  const CreditScreen({super.key});

  @override
  State<CreditScreen> createState() => _CreditScreenState();
}

class _CreditScreenState extends State<CreditScreen> {
  String _provider = '';
  final _searchController = TextEditingController();

  void _findProvider(String number) {
    setState(() {
      if (_Telkomsel.contains(number)) {
        _provider = 'Telkomsel';
      } else if (_Indosat.contains(number)) {
        _provider = 'Indosat';
      } else if (_XL.contains(number)) {
        _provider = 'XL';
      } else if (_Axis.contains(number)) {
        _provider = 'Axis';
      } else if (_Three.contains(number)) {
        _provider = 'Three';
      } else if (_Smartfren.contains(number)) {
        _provider = 'Smartfren';
      } else if (_Tri.contains(number)) {
        _provider = 'Tri';
      }
      context.read<CreditBloc>().add(
            GetDataEvent(_provider),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Isi Pulsa',
            style: TextStyle(
              color: dark,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: orange,
              size: 30,
            ),
            onPressed: () {
              AutoRouter.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                // search bar
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: CustomTextFormField(
                    hintText: 'Masukkan nomor telepon',
                    prefixIcon: Icon(
                      Icons.search,
                      color: softGray,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    controller: _searchController,
                    onSaved: (value) => _searchController.text = value!,
                    onChanged: (_) {
                      // find provider by number
                      if (_searchController.text.length == 4) {
                        _findProvider(_searchController.text);
                      } else if (_searchController.text.length < 4) {
                        setState(() {
                          _provider = '';
                        });
                        context.read<CreditBloc>().add(
                              const GetDataEvent(''),
                            );
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    autofocus: false,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Mau isi Pulsa berapa?',
                      style: TextStyle(
                        color: dark,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      // provider
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            _provider,
                            style: TextStyle(
                              color: dark,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      // grid view
                      BlocConsumer<CreditBloc, CreditState>(
                        listener: (context, state) {
                          if (state is CreditErrorState) {
                            const Center(
                              child: Text('Error'),
                            );
                          } else if (state is CreditInitialState) {
                            const Center(
                              child: Text(''),
                            );
                          }
                        },
                        listenWhen: (previous, current) {
                          if (current is CreditErrorState) {
                            return true;
                          } else if (current is CreditLoadedState) {
                            return true;
                          }
                          return false;
                        },
                        builder: (context, state) {
                          if (state is CreditInitialState) {
                            return const Center(
                              child: Text(''),
                            );
                          } else if (state is CreditLoadedState) {
                            return state.creditList.isEmpty
                                ? Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.shopping_cart,
                                          size: 100,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'No Product Available',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: dark,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : GridView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: state.creditList.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: MediaQuery.of(context)
                                              .size
                                              .width /
                                          (MediaQuery.of(context).size.height /
                                              4),
                                    ),
                                    itemBuilder: (context, index) {
                                      return CreditItem(
                                          state.creditList[index]);
                                    },
                                  );
                          } else {
                            return Center(
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
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
