import type { MedallionContent } from "@/modules/mainline/features/plays/shared/components/medallion";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
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

/* What a milestone medallion or League stamp holds, by milestone type. */
export const getMilestoneIcon = (typeSlug: string): AppIconComponent =>
  milestoneIconByTypeSlug[typeSlug] ?? appIcons.milestones.story;

/*
 * The milestones that are trophies, in gold: the League and the trials and
 * battles that stand in for gyms. A gym is its badge; anything else (the
 * story, a choice, a rival or boss) wears the calm blue.
 */
const trophyTypeSlugs = new Set([
  "champion",
  "elite-four",
  "grand-trial",
  "hall-of-fame",
  "noble",
  "team-star",
  "titan",
  "trial",
]);

export const isTrophyMilestone = (typeSlug: string | null | undefined) =>
  trophyTypeSlugs.has(typeSlug ?? "");

/* A recorded milestone's medallion: its badge, a gold trophy, or calm blue. */
export const getMilestoneMedallion = ({
  badgeType,
  icon,
  isTrophy,
}: {
  badgeType: PokemonTypeSlug | null | undefined;
  icon: AppIconComponent;
  isTrophy: boolean;
}): MedallionContent =>
  badgeType
    ? { kind: "badge", type: badgeType }
    : { icon, kind: isTrophy ? "gold" : "calm" };
