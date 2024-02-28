import '../models/drugs_item_model.dart';
import 'package:edubridge/core/app_export.dart';
import 'package:edubridge/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrugsItemWidget extends StatelessWidget {
  DrugsItemWidget(
    this.drugsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DrugsItemModel drugsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlineTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.v),
              CustomImageView(
                imagePath: drugsItemModelObj?.panadol,
                height: 50.adaptSize,
                width: 50.adaptSize,
                radius: BorderRadius.circular(
                  25.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  drugsItemModelObj.panadol1!,
                  style: CustomTextStyles.labelLargeOnPrimaryContainer,
                ),
              ),
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  drugsItemModelObj.quantiity!,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        drugsItemModelObj.price!,
                        style: CustomTextStyles.titleSmallOnPrimaryContainer,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 38.h),
                      child: CustomIconButton(
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        child: CustomImageView(
                          imagePath: drugsItemModelObj?.facebook,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
