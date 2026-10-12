import { getPlayTeamMemberImageUrl } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { cn } from "@/shared/utils/cn";

type TeamPlanPokemonIdentityProps = {
  comparison: MainlinePlayTeamPlanMemberComparison;
  side: "planned" | "play";
  showTypes?: boolean;
  variant?: "row" | "summary";
};

const getPlannedFormLabel = (
  comparison: MainlinePlayTeamPlanMemberComparison,
) => {
  const formName = comparison.plannedFormName.trim();

  if (
    !formName ||
    formName.toLowerCase().startsWith("default") ||
    formName.toLowerCase() === comparison.plannedName.toLowerCase()
  ) {
    return null;
  }

  return formName;
};

export const TeamPlanPokemonIdentity = ({
  comparison,
  side,
  showTypes = true,
  variant = "row",
}: TeamPlanPokemonIdentityProps) => {
  const member = comparison.playMember;
  const planned = side === "planned";
  const name = planned
    ? comparison.plannedName
    : (member?.species_name ?? "No matched Pokémon");
  const nickname = !planned ? member?.nickname : null;
  const imageUrl = planned
    ? getPokemonFormImageUrl({
        name: comparison.plannedName,
        sprite_slug: comparison.plannedSpriteSlug,
      })
    : member
      ? getPlayTeamMemberImageUrl(member)
      : null;
  const identity = planned
    ? getPlannedFormLabel(comparison)
    : member?.is_default_form
      ? null
      : member?.form_name;
  const missingIdentity = !planned && !member ? "No family match found" : null;
  const placement = !planned && member ? member.roster_state_name : null;
  const primaryType = planned
    ? comparison.plannedPrimaryType
    : (member?.primaryType ?? null);
  const secondaryType = planned
    ? comparison.plannedSecondaryType
    : (member?.secondaryType ?? null);
  const summary = variant === "summary";

  return (
    <div
      className={cn(
        "flex min-w-0 items-center gap-3",
        summary && "border-line rounded-lg border p-3",
      )}
    >
      <PokemonPortrait
        alt={imageUrl ? `${name} portrait` : ""}
        imageUrl={imageUrl}
        fallbackOnError
        sizes={summary ? "3.5rem" : "2.75rem"}
        className={cn(
          "border-line bg-surface-2 shrink-0 rounded-lg",
          summary ? "size-14" : "size-11 rounded-md",
        )}
        glowClassName="opacity-0"
        imageClassName={summary ? "p-1.5" : "p-1"}
      />

      <div className="grid min-w-0 gap-1">
        {summary ? (
          <p className="text-muted-foreground text-[0.6875rem] font-medium uppercase">
            {planned ? "Planned" : "Tracked"}
          </p>
        ) : null}
        <p
          className={cn(
            "text-foreground truncate font-semibold",
            summary ? "font-display text-base" : "text-sm",
          )}
        >
          {name}
          {nickname ? <span className="font-normal"> ({nickname})</span> : null}
        </p>
        <div className="flex min-w-0 items-center gap-2">
          {identity || missingIdentity || placement ? (
            <p className="text-muted-foreground truncate text-xs capitalize">
              {[identity, missingIdentity, placement]
                .filter(Boolean)
                .join(" · ")}
            </p>
          ) : null}
          {showTypes &&
          (primaryType || secondaryType) &&
          (planned || member) ? (
            <PokemonTypeList
              primaryType={primaryType}
              secondaryType={secondaryType}
              badgeDisplay="icon"
              badgeSize="sm"
              className="shrink-0 gap-1"
            />
          ) : null}
        </div>
      </div>
    </div>
  );
};
