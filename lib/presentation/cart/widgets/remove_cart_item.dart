
import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class RemoveCartItem extends StatelessWidget {
  const RemoveCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      bottom: 0,
      child: CustomIconButton(
        onPressed: () {
          showMyBottomSheet(
            context,
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              padding: PaddingChart.allMedium,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Remove From Cart?",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Spacing.normalHeight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("No"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          CustomSnackbar.showNotification(
                              context,
                              "removed",
                              "Removed From Cart",
                              const Icon(
                                  HugeIcons.strokeRoundedDelete04));
                          Navigator.pop(context);
                        },
                        child: const Text("Yes"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        iconColor: Colors.red,
        icon: HugeIcons.strokeRoundedDelete02,
      ),
    );
  }
}
