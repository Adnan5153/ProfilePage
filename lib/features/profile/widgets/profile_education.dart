import 'package:flutter/material.dart';
import 'package:profilepage/core/constants/app_colors.dart';
import 'package:profilepage/core/constants/app_dimensions.dart';
import 'package:profilepage/core/constants/app_strings.dart';
import 'package:profilepage/core/widgets/app_card.dart';



class ProfileEducation extends StatelessWidget {
  const ProfileEducation({super.key});

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
                    color: AppColors.info.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppDimensions.radiusS),
                  ),
                  child: const Icon(
                    Icons.school,
                    color: AppColors.info,
                    size: AppDimensions.iconM,
                  ),
                ),
                const SizedBox(width: AppDimensions.paddingM),
                const Text(
                  AppStrings.education,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey900,
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppDimensions.paddingL),

            // Education List
            ...AppStrings.educations.asMap().entries.map((entry) {
              final index = entry.key;
              final education = entry.value;
              return _buildEducationItem(
                degree: education['degree']!,
                school: education['school']!,
                duration: education['duration']!,
                isLast: index == AppStrings.educations.length - 1,
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationItem({
    required String degree,
    required String school,
    required String duration,
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
                  color: AppColors.info,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.white,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.info.withOpacity(0.3),
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
                    degree,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grey900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    school,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.info,
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
                  const Text(
                    'Relevant coursework includes software engineering, data structures, and mobile development.',
                    style: TextStyle(
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