import '../models/timeslots_item_model.dart';
import 'package:edubridge/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TimeslotsItemWidget extends StatelessWidget {
  TimeslotsItemWidget(
    this.timeslotsItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  TimeslotsItemModel timeslotsItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 11.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        timeslotsItemModelObj.timeOne!,
        style: TextStyle(
          color: (timeslotsItemModelObj.isSelected ?? false)
              ? theme.colorScheme.primary
              : theme.colorScheme.onPrimary,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (timeslotsItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.cyan300,
      shape: (timeslotsItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.teal50,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
