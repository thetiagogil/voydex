import { appRoutes } from "@/config/routes";
import type { MainlinePlayTeamPreviewMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { getPlayTeamSlots } from "@/modules/mainline/features/plays/shared/utils/play-team-slots";
import { PokemonCollectorCard } from "@/modules/reference/features/pokemon/components/pokemon-collector-card";
import { PokemonEmptySlot } from "@/modules/reference/features/pokemon/components/pokemon-empty-slot";
import { SectionHead } from "@/shared/components/section-head";

type TeamSectionProps = {
  activeCount: number | null;
  /*
   * A brand-new Play (v3 `fresh`): open slots invite you to add Pokémon, and
   * the first waits for your partner until you choose one.
   */
  fresh?: { partnerChosen: boolean } | null;
  href: string;
  playId: string;
  reserveCount: number | null;
  team: MainlinePlayTeamPreviewMember[];
};

const countLabel = (count: number | null, label: string) =>
  count === null ? null : `${count} ${label}`;

/*
 * A grid of cards keeps its heading on the page: your team, as its cards,
 * each under its nickname (or its species when it has none). Each opens the
 * Roster with that Pokémon selected.
 */
export const TeamSection = ({
  activeCount,
  fresh = null,
  href,
  playId,
  reserveCount,
  team,
}: TeamSectionProps) => {
  const aside = fresh
    ? team.length
      ? `${team.length} of 6`
      : "Empty for now"
    : [
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
        more={fresh && !team.length ? undefined : { href, label: "Open team" }}
      />
      <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 sm:gap-4 lg:grid-cols-6">
        {getPlayTeamSlots(team).map(({ member, position }) => {
          if (!member && fresh) {
            return position === 1 && !fresh.partnerChosen ? (
              <PokemonEmptySlot
                key={position}
                label="Your partner"
                text="Your partner"
                ring
              />
            ) : (
              <PokemonEmptySlot
                key={position}
                href={appRoutes.mainlinePlayTeamAdd(playId)}
                label="Add Pokémon"
                text="Add Pokémon"
                ring
              />
            );
          }

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
            <PokemonCollectorCard
              key={position}
              size="lg"
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
