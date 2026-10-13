import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberImageUrl } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

import {
  getTeamMemberIdentity,
  getTeamMemberName,
} from "../../utils/team-member-display";

type TeamRosterTileProps = {
  member: MainlinePlayTeamMember;
  onSelect: (member: MainlinePlayTeamMember) => void;
  selected: boolean;
  slotLabel: string;
  slotName: string;
};

/*
 * A Pokémon you own, as a sticker: its type tint, a 4px white border and a lip
 * tinted by its type. Picked, the border and lip take the Play's colour.
 */
export const TeamRosterTile = ({
  member,
  onSelect,
  selected,
  slotLabel,
  slotName,
}: TeamRosterTileProps) => {
  const name = getTeamMemberName(member);
  const identity = getTeamMemberIdentity(member);
  const level = member.level ? `Lv. ${member.level}` : null;
  const subtitle = [identity, level].filter(Boolean).join(" · ");
  const imageUrl = getPlayTeamMemberImageUrl(member);
  const primaryType =
    member.primaryType && isPokemonTypeSlug(member.primaryType.slug)
      ? member.primaryType.slug
      : null;
  const types = [member.primaryType, member.secondaryType].filter(
    (type) => type !== null,
  );

  return (
    <button
      type="button"
      aria-pressed={selected}
      aria-label={[
        name,
        identity,
        level,
        member.is_shiny ? "Shiny" : null,
        slotName,
      ]
        .filter(Boolean)
        .join(", ")}
      onClick={() => onSelect(member)}
      style={getPokemonTypeCssVariables(primaryType)}
      className={cn(
        "type-tint relative flex size-full min-w-0 flex-col items-center rounded-xl border-4 border-white px-2.5 pt-3 pb-3.5 text-center shadow-[0_5px_0_color-mix(in_oklab,var(--t)_38%,var(--lip))] transition-transform duration-150 hover:-translate-y-[3px]",
        selected && "border-game shadow-[0_5px_0_var(--game-deep)]",
      )}
    >
      <span
        aria-hidden
        className="text-ink-tint text-12 absolute top-2.5 left-3 font-extrabold tabular-nums"
      >
        {slotLabel}
      </span>
      {member.is_shiny ? (
        <AppIcon
          icon={appIcons.product.shiny}
          size="md"
          className="text-gold-deep absolute top-2.5 right-2.5"
        />
      ) : null}
      {imageUrl ? (
        // eslint-disable-next-line @next/next/no-img-element
        <img src={imageUrl} alt="" className="size-[92px]" />
      ) : (
        <span className="border-dash my-1 size-[84px] rounded-full border-[1.5px] border-dashed" />
      )}
      <span className="font-display text-16 mt-0.5 w-full truncate leading-tight font-semibold">
        {name}
      </span>
      <span className="text-ink-tint text-13 w-full truncate font-semibold">
        {subtitle || " "}
      </span>
      <span className="mt-1.5 flex justify-center gap-1">
        {types.map((type) =>
          isPokemonTypeSlug(type.slug) ? (
            <PokemonTypeBadge
              key={type.slug}
              type={type.slug}
              label={type.name}
              display="icon"
              size="sm"
            />
          ) : null,
        )}
      </span>
    </button>
  );
};
