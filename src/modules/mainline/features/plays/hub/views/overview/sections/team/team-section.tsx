import { appRoutes } from "@/config/routes";
import type { MainlinePlayTeamPreviewMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { getPlayTeamSlots } from "@/modules/mainline/features/plays/shared/utils/play-team-slots";
import {
  PokemonEmptySlot,
  PokemonSticker,
} from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { SectionHead } from "@/shared/components/section-head";

type TeamSectionProps = {
  activeCount: number | null;
  href: string;
  playId: string;
  reserveCount: number | null;
  team: MainlinePlayTeamPreviewMember[];
};

const countLabel = (count: number | null, label: string) =>
  count === null ? null : `${count} ${label}`;

/*
 * A grid of cards keeps its heading on the page: your team, as stickers.
 * Each opens the Roster with that Pokémon selected.
 */
export const TeamSection = ({
  activeCount,
  href,
  playId,
  reserveCount,
  team,
}: TeamSectionProps) => {
  const aside = [
    countLabel(activeCount, "active"),
    countLabel(reserveCount, "in reserve"),
  ]
    .filter(Boolean)
    .join(" · ");

  return (
    <section aria-labelledby="overview-team-title" className="grid gap-4">
      <SectionHead
        title="Your team"
        titleId="overview-team-title"
        aside={aside || undefined}
        more={{ href, label: "Open team" }}
      />
      <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 sm:gap-4 lg:grid-cols-6">
        {getPlayTeamSlots(team).map(({ member, position }) => {
          if (!member) {
            return (
              <PokemonEmptySlot
                key={position}
                label={`Open team slot ${position}`}
              />
            );
          }

          const name = getPlayTeamMemberName(member);

          return (
            <PokemonSticker
              key={position}
              href={
                member.play_pokemon_id
                  ? appRoutes.mainlinePlayTeamPokemon(
                      playId,
                      member.play_pokemon_id,
                    )
                  : href
              }
              imageUrl={getPlayTeamMemberImageUrl(member)}
              level={member.level}
              name={name}
              subtitle={
                member.species_name && member.species_name !== name
                  ? member.species_name
                  : null
              }
              types={[member.primaryType, member.secondaryType].filter(
                (type) => type !== null,
              )}
            />
          );
        })}
      </div>
    </section>
  );
};
