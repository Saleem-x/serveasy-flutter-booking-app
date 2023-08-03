import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/calender/calender_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/functions/booking.dart';
import 'package:project2/presentation/services/widgets/slotcardwidget.dart';

class SlotSelectionWidget extends StatelessWidget {
  const SlotSelectionWidget({
    super.key,
    required this.size,
    required this.bookedslots,
    required this.selectedDay,
    required this.slot,
  });

  final Size size;
  final List<int> bookedslots;
  final DateTime selectedDay;
  final int? slot;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        bookedslots.where((element) => element == 1).isEmpty
            ? InkWell(
                onTap: () async {
                  context.read<CalenderBloc>().add(
                        SloteSelectingEvent(1),
                      );
                  List<int> bookedslots = await getavailableslots(selectedDay);
                  Future.delayed(const Duration(microseconds: 1), () {
                    context
                        .read<CalenderBloc>()
                        .add((GetBookedSlotsEvent(bookedslots)));
                  });
                },
                child: SlotCardWidget(
                  fromtime: '09 AM',
                  endtime: '11 AM',
                  size: size,
                  slot: 1,
                  color: slot == null
                      ? colorgreyshade
                      : slot! == 1
                          ? colorblue
                          : colorgreyshade,
                ),
              )
            : SlotCardWidget(
                size: size,
                slot: 1,
                color: Colors.red,
                fromtime: '09 AM',
                endtime: '11 AM'),
        bookedslots.where((element) => element == 2).isEmpty
            ? InkWell(
                onTap: () async {
                  context.read<CalenderBloc>().add(
                        SloteSelectingEvent(2),
                      );
                  List<int> bookedslots = await getavailableslots(selectedDay);
                  // ignore: use_build_context_synchronously
                  context
                      .read<CalenderBloc>()
                      .add((GetBookedSlotsEvent(bookedslots)));
                },
                child: SlotCardWidget(
                  size: size,
                  slot: 2,
                  color: slot == null
                      ? colorgreyshade
                      : slot! == 2
                          ? colorblue
                          : colorgreyshade,
                  fromtime: '12 PM',
                  endtime: '02 PM',
                ),
              )
            : SlotCardWidget(
                size: size,
                slot: 2,
                color: Colors.red,
                fromtime: '12 PM',
                endtime: '02 PM'),
        bookedslots.where((element) => element == 3).isEmpty
            ? InkWell(
                onTap: () async {
                  context.read<CalenderBloc>().add(
                        SloteSelectingEvent(3),
                      );
                  List<int> bookedslots = await getavailableslots(selectedDay);
                  // ignore: use_build_context_synchronously
                  context
                      .read<CalenderBloc>()
                      .add((GetBookedSlotsEvent(bookedslots)));
                },
                child: SlotCardWidget(
                  size: size,
                  slot: 3,
                  color: slot == null
                      ? colorgreyshade
                      : slot! == 3
                          ? colorblue
                          : colorgreyshade,
                  fromtime: '03 PM',
                  endtime: '05 PM',
                ),
              )
            : SlotCardWidget(
                size: size,
                slot: 3,
                color: Colors.red,
                fromtime: '03 PM',
                endtime: '05 PM',
              ),
      ],
    );
  }
}
