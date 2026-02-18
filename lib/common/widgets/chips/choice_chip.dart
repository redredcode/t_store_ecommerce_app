import 'package:flutter/material.dart';
import 'package:t_store_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store_ecommerce_app/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: THelperFunctions.getColor(text) != null ? const SizedBox() : const Text(''),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      avatar: const TCircularContainer(width: 50, height: 50, backgroundColor: Colors.green),
      shape: const CircleBorder(),
      labelPadding: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      selectedColor: Colors.green,
      backgroundColor: Colors.green,
    );
  }
}
