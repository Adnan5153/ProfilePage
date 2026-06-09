import 'package:flutter/material.dart';
import 'package:profilepage/core/constants/app_colors.dart';
import 'package:profilepage/core/constants/app_dimensions.dart';
import 'package:profilepage/core/constants/app_strings.dart';
import 'package:profilepage/core/widgets/app_card.dart';



class ProfileContact extends StatelessWidget {
  const ProfileContact({super.key});

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
                    color: AppColors.error.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppDimensions.radiusS),
                  ),
                  child: const Icon(
                    Icons.contact_mail,
                    color: AppColors.error,
                    size: AppDimensions.iconM,
                  ),
                ),
                const SizedBox(width: AppDimensions.paddingM),
                const Text(
                  AppStrings.contactInfo,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey900,
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppDimensions.paddingL),

            // Contact Items
            _buildContactItem(
              icon: Icons.email,
              label: 'Email',
              value: AppStrings.email,
              color: AppColors.primary,
            ),
            const Divider(height: AppDimensions.paddingL),

            _buildContactItem(
              icon: Icons.phone,
              label: 'Phone',
              value: AppStrings.phone,
              color: AppColors.success,
            ),
            const Divider(height: AppDimensions.paddingL),

            _buildContactItem(
              icon: Icons.location_on,
              label: 'Location',
              value: AppStrings.location,
              color: AppColors.warning,
            ),
            const Divider(height: AppDimensions.paddingL),

            _buildContactItem(
              icon: Icons.language,
              label: 'Website',
              value: AppStrings.website,
              color: AppColors.info,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(AppDimensions.radiusM),
          ),
          child: Icon(
            icon,
            color: color,
            size: AppDimensions.iconM,
          ),
        ),
        const SizedBox(width: AppDimensions.paddingM),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.grey500,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}