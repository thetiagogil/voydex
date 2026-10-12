import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import type { MainlinePlayTeamPreviewMember } from "@/modules/mainline/features/plays/hub/types";
import {
  PokemonEmptySlot,
  PokemonSticker,
} from "@/modules/reference/features/pokemon/components/pokemon-sticker";

import {
  getTeamMemberImageUrl,
  getTeamMemberName,
  getTeamSlots,
} from "./team-model";

type TeamSectionProps = {
  activeCount: number | null;
  href: string;
  reserveCount: number | null;
  team: MainlinePlayTeamPreviewMember[];
};

const countLabel = (count: number | null, label: string) =>
  count === null ? null : `${count} ${label}`;

/* A grid of cards keeps its heading on the page: your team, as stickers. */
export const TeamSection = ({
  activeCount,
  href,
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
      <div className="flex flex-wrap items-baseline gap-x-3 gap-y-0.5">
        <h2 id="overview-team-title" className="text-24">
          Your team
        </h2>
        {aside ? (
          <span className="text-ink-3 text-14 hidden font-semibold sm:inline">
            {aside}
          </span>
        ) : null}
        <span className="ml-auto">
          <MainlinePlaySectionDestination href={href} label="Open team" />
        </span>
      </div>
      <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 sm:gap-4 lg:grid-cols-6">
        {getTeamSlots(team).map(({ member, slotNumber }) => {
          if (!member) {
            return (
              <PokemonEmptySlot
                key={slotNumber}
                label={`Open team slot ${slotNumber}`}
              />
            );
          }

          const name = getTeamMemberName(member);

          return (
            <PokemonSticker
              key={slotNumber}
              href={href}
              imageUrl={getTeamMemberImageUrl(member)}
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
