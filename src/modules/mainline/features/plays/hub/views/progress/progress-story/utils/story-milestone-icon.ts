import { appIcons, type AppIconComponent } from "@/shared/components/app-icon";

const milestoneIconByTypeSlug: Record<string, AppIconComponent> = {
  boss: appIcons.product.battle,
  champion: appIcons.milestones.champion,
  decision: appIcons.product.activity,
  "elite-four": appIcons.product.battle,
  "grand-trial": appIcons.product.battle,
  "hall-of-fame": appIcons.milestones.hallOfFame,
  noble: appIcons.product.battle,
  rival: appIcons.product.battle,
  "team-star": appIcons.product.battle,
  titan: appIcons.product.battle,
  trial: appIcons.product.battle,
};

/* What a gold milestone medallion or League stamp holds, by milestone type. */
export const getStoryMilestoneIcon = (typeSlug: string): AppIconComponent =>
  milestoneIconByTypeSlug[typeSlug] ?? appIcons.milestones.story;
