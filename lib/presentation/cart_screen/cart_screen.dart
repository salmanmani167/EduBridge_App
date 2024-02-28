import '../cart_screen/widgets/drugslist_item_widget.dart';
import 'models/cart_model.dart';
import 'models/drugslist_item_model.dart';
import 'package:edubridge/core/app_export.dart';
import 'package:edubridge/widgets/app_bar/appbar_leading_image.dart';
import 'package:edubridge/widgets/app_bar/appbar_subtitle.dart';
import 'package:edubridge/widgets/app_bar/appbar_trailing_image.dart';
import 'package:edubridge/widgets/app_bar/custom_app_bar.dart';
import 'package:edubridge/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/cart_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  CartScreenState createState() => CartScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartProvider(), child: CartScreen());
  }
}

class CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDrugsList(context),
                      SizedBox(height: 27.v),
                      Text("lbl_payment_detail".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 12.v),
                      _buildAdminFee(context,
                          adminFeeText: "lbl_consultation".tr,
                          priceText: "lbl_60_00".tr),
                      SizedBox(height: 11.v),
                      _buildAdminFee(context,
                          adminFeeText: "lbl_admin_fee".tr,
                          priceText: "lbl_01_00".tr),
                      SizedBox(height: 11.v),
                      _buildAdminFee(context,
                          adminFeeText: "msg_aditional_discount".tr,
                          priceText: "lbl".tr),
                      SizedBox(height: 11.v),
                      _buildAdminFee(context,
                          adminFeeText: "lbl_total".tr,
                          priceText: "lbl_61_00".tr),
                      SizedBox(height: 25.v),
                      Divider(),
                      SizedBox(height: 27.v),
                      Text("lbl_payment_method".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 10.v),
                      _buildAdminFee(context,
                          adminFeeText: "lbl_visa".tr,
                          priceText: "lbl_change".tr),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildCheckoutRow(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_my_cart".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 10.v))
        ]);
  }

  /// Section Widget
  Widget _buildDrugsList(BuildContext context) {
    return Consumer<CartProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 25.v);
          },
          itemCount: provider.cartModelObj.drugslistItemList.length,
          itemBuilder: (context, index) {
            DrugslistItemModel model =
                provider.cartModelObj.drugslistItemList[index];
            return DrugslistItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildCheckoutRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 26.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 2.v, bottom: 6.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_total".tr,
                            style: CustomTextStyles.titleSmallGray500),
                        Opacity(
                            opacity: 0.9,
                            child: Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text("lbl_20_98".tr,
                                    style:
                                        CustomTextStyles.titleMediumOnPrimary)))
                      ])),
              CustomElevatedButton(width: 192.h, text: "lbl_checkout".tr)
            ]));
  }

  /// Common widget
  Widget _buildAdminFee(
    BuildContext context, {
    required String adminFeeText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(adminFeeText,
          style: theme.textTheme.bodyMedium!
              .copyWith(color: theme.colorScheme.onPrimary)),
      Text(priceText,
          style: theme.textTheme.bodyMedium!
              .copyWith(color: theme.colorScheme.onPrimary))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
