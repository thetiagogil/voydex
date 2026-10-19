import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamPlanMemberComparison,
} from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Type } from "@/modules/reference/types";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";

import {
  getTeamPlanMemberPlacement,
  type TeamPlanMemberPlacement,
} from "../team-plan-model";
import { teamPlanPastIcon } from "./team-plan-pill";

type PokemonType = Pick<Type, "name" | "slug">;

/* `--t` for a Pokémon's first type, the colour every type tint reads. */
export const getTeamPlanTypeStyle = (type: PokemonType | null) =>
  getPokemonTypeCssVariables(
    type && isPokemonTypeSlug(type.slug) ? type.slug : null,
  );

export const getTeamPlanPlannedImageUrl = (
  comparison: MainlinePlayTeamPlanMemberComparison,
) =>
  getPokemonFormImageUrl({
    name: comparison.plannedName,
    slug: comparison.plannedFormSlug,
  });

/*
 * The art alone; a dark silhouette when the Pokémon isn't yours. Without art
 * it shows the first letter of `name`, readable even as a silhouette.
 */
export const TeamPlanArt = ({
  className,
  imageUrl,
  name,
  silhouette = false,
}: {
  className?: string;
  imageUrl: string | null;
  name: string;
  silhouette?: boolean;
}) => (
  <FallbackImage
    src={imageUrl}
    name={name}
    loading="lazy"
    className={cn(
      "block shrink-0 object-contain",
      silhouette && "opacity-10 brightness-0",
      className,
    )}
    fallbackClassName="opacity-100 brightness-100"
  />
);

const placementIcons: Record<TeamPlanMemberPlacement, AppIconComponent> = {
  past: teamPlanPastIcon,
  reserve: appIcons.product.reserve,
  team: appIcons.product.caught,
};

/* v3 `.wchip`: the Pokémon this target matched, and where it is now. */
export const TeamPlanMatchLine = ({
  className,
  member,
  onTint = false,
}: {
  className?: string;
  member: MainlinePlayTeamMember | null;
  onTint?: boolean;
}) => {
  if (!member) {
    return (
      <span
        className={cn(
          "text-13 text-ink-3 inline-flex items-center gap-1.5 font-semibold",
          className,
        )}
      >
        <AppIcon icon={appIcons.product.uncaught} size={15} />
        Not caught yet
      </span>
    );
  }

  const placement = getTeamPlanMemberPlacement(member);

  return (
    <span
      className={cn(
        "text-13 flex max-w-full min-w-0 items-center justify-center gap-1.5 font-semibold",
        onTint ? "text-ink-tint" : "text-ink-2",
        className,
      )}
    >
      <AppIcon icon={placementIcons[placement.kind]} size={15} />
      <span className="truncate">
        <b className="text-ink font-extrabold">
          {getPlayTeamMemberName(member)}
        </b>{" "}
        · {placement.label}
      </span>
    </span>
  );
};
