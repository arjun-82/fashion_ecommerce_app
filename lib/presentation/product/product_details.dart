import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SingleChipController(chipItems: []));
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const ProductImage(
              imageUrl:
                  'https://images.pexels.com/photos/1926769/pexels-photo-1926769.jpeg?auto=compress&cs=tinysrgb&w=600',
            ),
            Stack(
              children: [
                const Positioned(
                    top: 22,
                    right: 20,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.end,
                      spacing: 3,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text("4.5"),
                      ],
                    )),
                Container(
                  width: double.infinity,
                  padding: PaddingChart.allSmall,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacing.smallHeight,
                      Text(
                        "adidas",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Spacing.smallHeight,
                      Text(
                        "Stylish Summer Dress",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Spacing.mediumHeight,
                      const Text(
                        "Special Price",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: TextSize.px14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Spacing.smallHeight,
                      const PriceOfferLabel(
                        offerPrice: "500",
                        originalPrice: "750",
                        discount: "25",
                      ),
                      Spacing.smallHeight,
                      HeadLineWidget(
                          title: "Sizes",
                          isTrailingDefault: false,
                          textstyle: Theme.of(context).textTheme.labelLarge,
                          isStyle: true,
                          isPadding: false),
                      ClickableChips(
                          border: const CircleBorder(),
                          chipLabels: const ["24", "25", "28", "29", "30"],
                          controller: controller),
                      Spacing.mediumHeight,
                      HeadLineWidget(
                          title: "Colors",
                          isTrailingDefault: false,
                          textstyle: Theme.of(context).textTheme.labelLarge,
                          isStyle: true,
                          isPadding: false),
                      ClickableChips(
                          border: const RoundedRectangleBorder(),
                          chipLabels: const [
                            "Red",
                            "Blue",
                            "yellow",
                          ],
                          controller: controller),
                      Spacing.mediumHeight,
                      DropDownWidgets(
                        title: "Description",
                        child: const Text(""),
                      ),
                      const HeadLineWidget(
                        isPadding: true,
                        isStyle: false,
                        title: "Review ",
                        isTrailingDefault: true,
                      ),
                      ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => const ReviewCard(),
                      ),
                      const HeadLineWidget(
                        isPadding: true,
                        isStyle: false,
                        title: "Recommended ",
                        isTrailingDefault: false,
                      ),
                      CustomMasonryGridView(
                        itemCount: 4,
                        itemBuilder: (context, index) => RandomProductCard(
                          imageUrl: images[index],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomButton(
        onTap: () {
          CustomSnackbar.showInfo(
            context,
            "Baged",
            "Product Added to Bag",
          );
        },
      ),
    );
  }
}
