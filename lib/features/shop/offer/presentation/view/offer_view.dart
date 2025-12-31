import 'package:flutter/material.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';
import 'package:lafayuu_app/features/shop/offer/presentation/view/widgets/offer_view_body.dart';

class OfferView extends StatelessWidget {
  const OfferView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundWhite,
      body: OfferViewBody(),
    );
  }
}
