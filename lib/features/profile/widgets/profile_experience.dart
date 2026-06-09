import 'package:flutter/material.dart';
import 'package:profilepage/core/constants/app_colors.dart';
import 'package:profilepage/core/constants/app_dimensions.dart';
import 'package:profilepage/core/constants/app_strings.dart';
import 'package:profilepage/core/widgets/app_card.dart';



class ProfileExperience extends StatelessWidget {
  const ProfileExperience({super.key});

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
                    color: AppColors.success.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppDimensions.radiusS),
                  ),
                  child: const Icon(
                    Icons.work,
                    color: AppColors.success,
                    size: AppDimensions.iconM,
                  ),
                ),
                const SizedBox(width: AppDimensions.paddingM),
                const Text(
                  AppStrings.experience,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey900,
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppDimensions.paddingL),

            // Experience List
            ...AppStrings.experiences.asMap().entries.map((entry) {
              final index = entry.key;
              final experience = entry.value;
              return _buildExperienceItem(
                title: experience['title']!,
                company: experience['company']!,
                duration: experience['description']!,
                description: experience['description']!,
                isLast: index == AppStrings.experiences.length - 1,
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceItem({
    required String title,
    required String company,
    required String duration,
    required String description,
    required bool isLast,
  }) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Timeline Dot
          Column(
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.white,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.3),
                      blurRadius: 8,
                    ),
                  ],
                ),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    color: AppColors.grey300,
                  ),
                ),
            ],
          ),

          const SizedBox(width: AppDimensions.paddingM),

          // Content
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: isLast ? 0 : AppDimensions.paddingL,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grey900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    company,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.grey100,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      duration,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.grey500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.grey600,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}