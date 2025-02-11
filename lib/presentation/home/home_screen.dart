import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> adItem = List.generate(4, (index) => const AdHomeCard());
    return Scaffold(
        appBar: const AppBarHeader(
          isleading: false,
          actions: [
            CustomIconButton(icon: HugeIcons.strokeRoundedNotification01)
          ],
          child: HeadLogo(),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // Searchbar
              const HomeSearchBar(),
              Spacing.mediumHeight,
              // adCard
              CardSlider(
                card: adItem,
              ),
              SliderPointer(
                items: adItem,
              ),
              // Category
              const Categories(),
              // Offer time if it need
              const OfferLabelCounter(
                title: "Flash Sale",
                counterTitle: "Close In:",
                duration: Duration(seconds: 15),
              ),
              // product cards 3 row
              HeadLineWidget(
                isStyle: false,
                isPadding: true,
                title: "New Arrival",
                isTrailingDefault: true,
                onPressed: () {},
              ),
              CustomMasonryGridView(
                itemCount: images.length,
                itemBuilder: (context, index) => RandomProductCard(
                  imageUrl: images[index],
                  discountPercentage: "23",
                  discountPrice: "400",
                ),
              ),
              // ad card again
              const HeadLineWidget(
                  isPadding: true,
                  isStyle: false,
                  title: "Explore",
                  isTrailingDefault: false),
              // Poster
              const PosterCard(),
              // Unorder grid card 2row
              const HeadLineWidget(
                isPadding: true,
                isStyle: false,
                title: "Popular Product",
                isTrailingDefault: false,
              ),
              CustomGridViewBuilder(
                height: 260,
                itemCount: 6,
                itemBuilder: (context, index) => const VerticalProductCard(
                  discountPercentage: "40",
                  discountPrice: "900",
                  brand: "adidas",
                ),
              ),
            ],
          ),
        ));
  }
}
