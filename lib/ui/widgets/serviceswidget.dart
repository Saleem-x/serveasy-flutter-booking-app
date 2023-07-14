import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/bloc/service/service_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/constents/ecorations.dart';
import 'package:project2/functions/getservices.dart';
import 'package:project2/ui/services/servicesview.dart';

class SearvicesList extends StatelessWidget {
  const SearvicesList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getAllServices(context);
    });
    return BlocBuilder<ServiceBloc, ServiceState>(
      builder: (context, state) {
        return state.serviceslist.isEmpty
            ? Center(
                child: Lottie.asset('assets/animations/waitinganimation.json'),
              )
            : ListView.builder(
                itemCount: state.serviceslist.length > 3
                    ? 3
                    : state.serviceslist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ServiceView(
                          service: state.serviceslist[index],
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                color: colorgreyshade,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        state.serviceslist[index].imageUrl),
                                    fit: BoxFit.cover)),
                            width: size.width / 3,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: size.height * 0.09,
                            decoration: BoxDecoration(
                              color: colorwhite,
                              boxShadow: [insetboxshadow],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            width: size.width / 3,
                            child: Center(
                                child: Text(
                              state.serviceslist[index].name,
                              style: fontstyle(fontSize: 17),
                            )),
                          ),
                        )
                      ]),
                    ),
                  );
                },
              );
      },
    );
  }
}
