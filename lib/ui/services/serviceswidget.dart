import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/bloc/service/service_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/constents/ecorations.dart';
import 'package:project2/models/servicemodel.dart';
import 'package:project2/functions/getservices.dart';
import 'package:project2/ui/services/servicesview.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getAllServices(context);
    });
    return BlocBuilder<ServiceBloc, ServiceState>(
      builder: (context, state) {
        return state.serviceslist == null
            ? Center(
                child: Lottie.asset('assets/animations/loadinganimation1.json'),
              )
            : state.serviceslist!.isEmpty
                ? const Center(
                    child: Text(' currently No Service is Available'),
                  )
                : ListView.builder(
                    itemCount: state.serviceslist!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // height: size.height / 2,
                          // decoration: BoxDecoration(
                          //   color: colorblue,
                          //   borderRadius: BorderRadius.circular(10),
                          // ),
                          decoration: decoration1,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        color: colorblue.shade300,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Center(
                                        child: Text(
                                          state.serviceslist![index].name,
                                          style: fontstyle(color: colorwhite),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'From',
                                          style: fontstyle(
                                              color: colorblack,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '₹${state.serviceslist![index].price}/hr',
                                          style: fontstyle(
                                              color: colorblack, fontSize: 17),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Container(
                                height: size.height * 0.18,
                                width: size.width / 1.4,
                                decoration: BoxDecoration(
                                  color: colorwhite,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          state.serviceslist![index].imageUrl),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Text(
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  state.serviceslist![index].description,
                                  style: fontstyle(color: colorblack),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              SizedBox(
                                width: size.width / 2.5,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    side: const BorderSide(
                                      color: colorblue,
                                      width: 2.0,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ServiceView(
                                            service: ServiceModel(
                                                state.serviceslist![index].id,
                                                name: state
                                                    .serviceslist![index].name,
                                                price: state
                                                    .serviceslist![index].price,
                                                description: state
                                                    .serviceslist![index]
                                                    .description,
                                                imageUrl: state
                                                    .serviceslist![index]
                                                    .imageUrl),
                                          ),
                                        ));
                                  },
                                  child: Text(
                                    'More',
                                    style: fontstyle(
                                        color: textcolorblue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
      },
    );
  }
}
