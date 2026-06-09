import 'package:flutter/material.dart';
import 'package:profilepage/core/constants/app_colors.dart';
import 'package:profilepage/core/constants/app_dimensions.dart';
import 'package:profilepage/core/constants/app_strings.dart';
import 'package:profilepage/core/widgets/app_card.dart';



class ProfileSocial extends StatelessWidget {
  const ProfileSocial({super.key});

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
                    Icons.link,
                    color: AppColors.primary,
                    size: AppDimensions.iconM,
                  ),
                ),
                const SizedBox(width: AppDimensions.paddingM),
                const Text(
                  AppStrings.socialMedia,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey900,
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppDimensions.paddingL),

            // Social Links
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSocialItem(
                  icon: Icons.code,
                  platform: 'GitHub',
                  color: AppColors.grey900,
                ),
                _buildSocialItem(
                  icon: Icons.work,
                  platform: 'LinkedIn',
                  color: AppColors.info,
                ),
                _buildSocialItem(
                  icon: Icons.tag,
                  platform: 'Twitter',
                  color: AppColors.primary,
                ),
                _buildSocialItem(
                  icon: Icons.camera,
                  platform: 'Instagram',
                  color: const Color(0xFFE1306C),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialItem({
    required IconData icon,
    required String platform,
    required Color color,
  }) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(AppDimensions.radiusM),
      child: Container(
        padding: const EdgeInsets.all(AppDimensions.paddingM),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(AppDimensions.radiusM),
          border: Border.all(
            color: color.withOpacity(0.2),
          ),
        ),
        child: Icon(
          icon,
          color: color,
          size: AppDimensions.iconL,
        ),
      ),
    );
  }
}