import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String? profileUrl, date, name, review;
  const ReviewCard({
    super.key,
    this.profileUrl,
    this.date,
    this.name,
    this.review,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,
            child: Text(
              date ?? "10/10/2024",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            child: Wrap(
              spacing: 20,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(profileUrl ??
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjUuYcnZ-xqlGZiDZvuUy_iLx3Nj6LSaZSzQ&s"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? "Jonh Deo",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const Wrap(
                      spacing: 0,
                      children: [
                        Icon(
                          Icons.star,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 65,
            left: 5,
            right: 0,
            child: Text(
              review ??
                  "I really liked the quality and the design.I really liked the quality and the design.I really liked the quality and the design. It fits perfectly and looks great! I really liked the quality and the design. It fits perfectly and looks great!",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: TextSize.px14, fontWeight: FontWeight.w400),
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
