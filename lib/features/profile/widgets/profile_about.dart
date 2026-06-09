import 'package:flutter/material.dart';
import 'package:profilepage/core/constants/app_colors.dart';
import 'package:profilepage/core/constants/app_dimensions.dart';
import 'package:profilepage/core/constants/app_strings.dart';
import 'package:profilepage/core/widgets/app_card.dart';



class ProfileAbout extends StatelessWidget {
  const ProfileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.paddingM,
      ),
      child: AppCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section Title
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppDimensions.radiusS),
                  ),
                  child: const Icon(
                    Icons.person,
                    color: AppColors.primary,
                    size: AppDimensions.iconM,
                  ),
                ),
                const SizedBox(width: AppDimensions.paddingM),
                const Text(
                  AppStrings.about,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey900,
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppDimensions.paddingM),

            // Bio Text
            const Text(
              AppStrings.longBio,
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
                color: AppColors.grey700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}