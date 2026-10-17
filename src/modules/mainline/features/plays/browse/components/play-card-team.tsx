import type { PlayBrowseTeam } from "@/modules/mainline/features/plays/shared/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { getPlayTeamSlots } from "@/modules/mainline/features/plays/shared/utils/play-team-slots";
import {
  PokemonAvatar,
  PokemonAvatarSlot,
} from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { cn } from "@/shared/utils/cn";

type PlayCardTeamProps = {
  className?: string;
  team: PlayBrowseTeam;
};

/*
 * The active team as small Pokémon (`PokemonAvatar`, the same as a Plan's
 * strip), each on its type's tint; open slots are dashed rings.
 */
export const PlayCardTeam = ({ className, team }: PlayCardTeamProps) => {
  if (team.state === "unavailable") {
    return (
      <p className={cn("text-ink-3 text-13 font-semibold", className)}>
        Team unavailable
      </p>
    );
  }

  return (
    <ul
      aria-label="Active team"
      className={cn("grid grid-cols-[repeat(6,48px)] gap-1.5", className)}
    >
      {getPlayTeamSlots(team.members).map(({ member, position }) => (
        <li key={member?.play_pokemon_id ?? `open-${position}`}>
          {member ? (
            <PokemonAvatar
              imageUrl={getPlayTeamMemberImageUrl(member)}
              name={getPlayTeamMemberName(member)}
              typeSlug={
                member.form_id
                  ? (team.typeSlugByFormId[member.form_id] ?? null)
                  : null
              }
            />
          ) : (
            <PokemonAvatarSlot label={`Open slot ${position}`} />
          )}
        </li>
      ))}
    </ul>
  );
};
