import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import {
  PokemonEmptySlot,
  PokemonSticker,
} from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

const columns = [
  { icon: appIcons.product.caught, key: "active", title: "On the team" },
  { icon: appIcons.product.reserve, key: "reserve", title: "In reserve" },
] as const;

/* Where an off-plan Pokémon is: its slot on the team, or the reserve. */
const getPlaceLabel = (member: MainlinePlayTeamMember) =>
  member.roster_state_slug === "active" && member.slot
    ? `Slot ${member.slot}`
    : "Reserve";

/*
 * v3 "Outside the Plan": what this Play recorded that isn't one of the
 * Plan's targets, as the small stickers of Pokémon you own, in two columns:
 * on the team and in reserve.
 */
export const TeamPlanOffPlanSection = ({
  members,
}: {
  members: MainlinePlayTeamMember[];
}) => {
  return (
    <DetailSectionCard
      title="Outside the Plan"
      aside="Recorded in this Play, but not one of the Plan's targets"
    >
      <div className="grid gap-6 sm:grid-cols-2">
        {columns.map((column) => {
          const columnMembers = members.filter(
            (member) => member.roster_state_slug === column.key,
          );
          const headingId = `off-plan-${column.key}`;

          return (
            <section key={column.key} aria-labelledby={headingId}>
              <h3
                id={headingId}
                className="text-ink-3 text-13 mb-2.5 flex items-center gap-2 font-sans font-extrabold tracking-normal"
              >
                <AppIcon icon={column.icon} />
                {column.title}
                <span className="tabular-nums">{columnMembers.length}</span>
              </h3>
              {columnMembers.length ? (
                <ul className="grid grid-cols-2 gap-3 sm:grid-cols-3">
                  {columnMembers.map((member) => {
                    const name = getPlayTeamMemberName(member);

                    return (
                      <li key={member.play_pokemon_id} className="min-w-0">
                        <PokemonSticker
                          variant="compact"
                          className="size-full"
                          imageUrl={getPlayTeamMemberImageUrl(member)}
                          name={name}
                          shiny={member.is_shiny === true}
                          subtitle={getPlaceLabel(member)}
                          types={[
                            member.primaryType,
                            member.secondaryType,
                          ].filter((type) => type !== null)}
                        />
                      </li>
                    );
                  })}
                </ul>
              ) : (
                /* One empty tile, the size of the stickers it stands in for. */
                <ul className="grid grid-cols-2 gap-3 sm:grid-cols-3">
                  <li className="min-w-0">
                    <PokemonEmptySlot
                      variant="compact"
                      label={`Nothing ${column.title.toLowerCase()} outside the Plan`}
                      text="All part of the Plan"
                      className="text-14 h-full px-3 text-center"
                    />
                  </li>
                </ul>
              )}
            </section>
          );
        })}
      </div>
    </DetailSectionCard>
  );
};
