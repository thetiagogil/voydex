import Link from "next/link";

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
import { AppIcon, appIcons } from "@/shared/components/app-icon";
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

const openSlotClassName =
  "empty-slot text-ink-3 flex min-h-53 min-w-0 flex-col items-center justify-center gap-3 rounded-xl text-[13.5px] font-bold";

/* v3 `.open-lite`: a ring with a plus over its words. */
const OpenSlotRing = () => (
  <span
    aria-hidden
    className="bg-surface-2 text-ink-2 grid size-12 place-items-center rounded-full"
  >
    <AppIcon icon={appIcons.actions.create} size="md" />
  </span>
);

const countLabel = (count: number | null, label: string) =>
  count === null ? null : `${count} ${label}`;

/*
 * A grid of cards keeps its heading on the page: your team, as stickers.
 * Each opens the Roster with that Pokémon selected.
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
              <div key={position} className={openSlotClassName}>
                <OpenSlotRing />
                Your partner
              </div>
            ) : (
              <Link
                key={position}
                href={appRoutes.mainlinePlayTeamAdd(playId)}
                className={`${openSlotClassName} hover:text-ink-2 focus-visible:outline-focus transition-colors focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid`}
              >
                <OpenSlotRing />
                Add Pokémon
              </Link>
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
