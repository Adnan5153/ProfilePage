import 'package:flutter/material.dart';
import 'package:profilepage/core/constants/app_colors.dart';
import 'package:profilepage/core/constants/app_dimensions.dart';
import 'package:profilepage/core/constants/app_strings.dart';
import 'package:profilepage/core/widgets/app_card.dart';



class ProfileSkills extends StatelessWidget {
  const ProfileSkills({super.key});

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
                    color: AppColors.accent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppDimensions.radiusS),
                  ),
                  child: const Icon(
                    Icons.psychology,
                    color: AppColors.accent,
                    size: AppDimensions.iconM,
                  ),
                ),
                const SizedBox(width: AppDimensions.paddingM),
                const Text(
                  AppStrings.skills,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey900,
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppDimensions.paddingL),

            // Technical Skills
            const Text(
              'Technical Skills',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.grey800,
              ),
            ),
            const SizedBox(height: AppDimensions.paddingM),

            Wrap(
              spacing: AppDimensions.paddingS,
              runSpacing: AppDimensions.paddingS,
              children: AppStrings.technicalSkills
                  .map((skill) => _buildSkillChip(skill, AppColors.primary))
                  .toList(),
            ),

            const SizedBox(height: AppDimensions.paddingL),

            // Soft Skills
            const Text(
              'Soft Skills',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.grey800,
              ),
            ),
            const SizedBox(height: AppDimensions.paddingM),

            Wrap(
              spacing: AppDimensions.paddingS,
              runSpacing: AppDimensions.paddingS,
              children: AppStrings.softSkills
                  .map((skill) => _buildSkillChip(skill, AppColors.accent))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillChip(String skill, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.paddingM,
        vertical: AppDimensions.paddingS,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppDimensions.radiusCircle),
        border: Border.all(
          color: color.withOpacity(0.3),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check_circle,
            size: 16,
            color: color,
          ),
          const SizedBox(width: AppDimensions.paddingXS),
          Text(
            skill,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}