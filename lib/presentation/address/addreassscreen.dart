import 'dart:developer';

import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/bloc/address/address_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/functions/address.dart';
import 'package:project2/models/addressmodel.dart';

class AddressScreen extends StatelessWidget {
  final TextEditingController _addressLine1Controller = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();
  final _addressformkey = GlobalKey<FormState>();

  AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AddressBloc>().add(LoadingEvent(false));
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Create Address',
        style: fontstyle(),
      )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<AddressBloc, AddressState>(
          builder: (context, state) {
            return state.isLoading
                ? Center(
                    child: Lottie.asset(
                        'assets/animations/loadinganimation1.json'),
                  )
                : Form(
                    key: _addressformkey,
                    child: ListView(
                      children: [
                        Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                AddressTextField(
                                    controller: _addressLine1Controller,
                                    type: TextInputType.text,
                                    label: 'Address'),
                                SizedBox(height: size.height * 0.02),
                                SizedBox(height: size.height * 0.02),
                                CSCPicker(
                                  countryDropdownLabel: state.country == null
                                      ? 'Country'
                                      : state.country!,
                                  stateDropdownLabel: state.state == null
                                      ? 'State'
                                      : state.state!,
                                  cityDropdownLabel:
                                      state.city == null ? 'City' : state.city!,
                                  onCountryChanged: (value) {
                                    context
                                        .read<AddressBloc>()
                                        .add(CountrySelectingEvent(value));
                                  },
                                  onStateChanged: (selectedstate) {
                                    log(state.country!);
                                    context.read<AddressBloc>().add(
                                        StateSelectingEvent(
                                            selectedstate ?? 'State'));
                                  },
                                  onCityChanged: (city) {
                                    context.read<AddressBloc>().add(
                                        CitySelectingEvent(city ?? 'City'));
                                  },
                                ),
                                SizedBox(height: size.height * 0.02),
                                AddressTextField(
                                    controller: _postalCodeController,
                                    type: TextInputType.number,
                                    label: 'Zip code'),
                                SizedBox(height: size.height * 0.02),
                                ElevatedButton(
                                  onPressed: () async {
                                    log('${state.country} /${state.state} /${state.city}');
                                    if (_addressformkey.currentState!
                                        .validate()) {
                                      context
                                          .read<AddressBloc>()
                                          .add(LoadingEvent(true));
                                      log('${state.country} /${state.state} /${state.city}');
                                      if (state.country == 'Country' ||
                                          state.state == 'State' ||
                                          state.city == 'City') {
                                        context
                                            .read<AddressBloc>()
                                            .add(LoadingEvent(false));
                                        ScaffoldMessenger.of(context)
                                          ..removeCurrentSnackBar()
                                          ..showSnackBar(SnackBar(
                                              backgroundColor: Colors.red,
                                              content: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.info,
                                                    color: colorwhite,
                                                  ),
                                                  SizedBox(
                                                    width: size.width * 0.02,
                                                  ),
                                                  Text(
                                                    'make sure country,state and city is selected',
                                                    style: fontstyle(),
                                                  )
                                                ],
                                              )));
                                        context
                                            .read<AddressBloc>()
                                            .add(CitySelectingEvent('City'));
                                        context.read<AddressBloc>().add(
                                            CountrySelectingEvent('Country'));
                                        context
                                            .read<AddressBloc>()
                                            .add(StateSelectingEvent('State'));
                                      } else {
                                        await addAddress(
                                          AddressModel(
                                              _addressLine1Controller.text,
                                              state.country!,
                                              state.state!,
                                              state.city!,
                                              _postalCodeController.text),
                                        );
                                        _addressLine1Controller.clear();
                                        _postalCodeController.clear();

                                        // ignore: use_build_context_synchronously
                                        ScaffoldMessenger.of(context)
                                          ..removeCurrentSnackBar()
                                          ..showSnackBar(SnackBar(
                                              backgroundColor: Colors.green,
                                              content: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.info,
                                                    color: colorwhite,
                                                  ),
                                                  SizedBox(
                                                    width: size.width * 0.02,
                                                  ),
                                                  Text(
                                                    'address uploaded success fully',
                                                    style: fontstyle(),
                                                  )
                                                ],
                                              )));
                                        // ignore: use_build_context_synchronously
                                        context
                                            .read<AddressBloc>()
                                            .add(CitySelectingEvent('City'));
                                        // ignore: use_build_context_synchronously
                                        context.read<AddressBloc>().add(
                                            CountrySelectingEvent('Country'));
                                        // ignore: use_build_context_synchronously
                                        context
                                            .read<AddressBloc>()
                                            .add(StateSelectingEvent('State'));
                                        // ignore: use_build_context_synchronously
                                        context
                                            .read<AddressBloc>()
                                            .add(LoadingEvent(false));
                                      }
                                    } else {
                                      log('no');
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    textStyle: fontstyle(fontSize: 17),
                                  ),
                                  child: Text(
                                    'Save Address',
                                    style: fontstyle(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}

class AddressTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType type;
  const AddressTextField(
      {super.key,
      required this.controller,
      required this.label,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$label is Required';
        } else if (label == 'Zip code' && value.length != 6) {
          return 'enter a valid zip code';
        }
        return null;
      },
      decoration: InputDecoration(labelText: label),
    );
  }
}
