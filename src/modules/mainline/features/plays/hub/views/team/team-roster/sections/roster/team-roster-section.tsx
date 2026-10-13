import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { PokemonEmptySlot } from "@/modules/reference/features/pokemon/components/pokemon-sticker";

import {
  getTeamRosterSlots,
  teamRosterSize,
  type TeamRosterGroup,
} from "./team-roster-model";
import { TeamRosterTile } from "./team-roster-tile";

type TeamRosterSectionProps = {
  onSelect: (member: MainlinePlayTeamMember) => void;
  roster: MainlinePlayTeamMember[];
  selectedMemberId: string | null;
  showsReserve: boolean;
};

const groupTitles: Record<TeamRosterGroup, string> = {
  active: "Active team",
  reserve: "Reserve",
};

const TeamRosterGroupList = ({
  group,
  onSelect,
  roster,
  selectedMemberId,
}: Omit<TeamRosterSectionProps, "showsReserve"> & {
  group: TeamRosterGroup;
}) => {
  const slots = getTeamRosterSlots(roster, group);
  const filledCount = slots.filter((slot) => slot.member).length;
  const headingId = `team-${group}-heading`;
  const groupName = group === "active" ? "Active" : "Reserve";

  return (
    <section aria-labelledby={headingId}>
      <h3
        id={headingId}
        className="text-ink-3 text-13 mb-2.5 flex items-baseline gap-2 font-sans font-extrabold tracking-normal"
      >
        {groupTitles[group]}
        <span className="tabular-nums">
          {filledCount} / {teamRosterSize}
        </span>
      </h3>
      <ul className="grid grid-cols-2 gap-x-4 gap-y-[18px] sm:grid-cols-3">
        {slots.map((slot) => (
          <li key={slot.position} className="min-w-0">
            {slot.member ? (
              <TeamRosterTile
                member={slot.member}
                onSelect={onSelect}
                selected={slot.member.play_pokemon_id === selectedMemberId}
                slotLabel={slot.label}
                slotName={`${groupName} slot ${slot.position}`}
              />
            ) : (
              <PokemonEmptySlot
                label={`Empty ${groupName.toLowerCase()} slot ${slot.position}`}
                className="text-14 h-full min-h-[150px]"
              />
            )}
          </li>
        ))}
      </ul>
    </section>
  );
};

/* Your team and reserve as stickers: the loud part of the page. */
export const TeamRosterSection = ({
  showsReserve,
  ...props
}: TeamRosterSectionProps) => {
  return (
    <div className="grid min-w-0 content-start gap-6.5">
      <TeamRosterGroupList group="active" {...props} />
      {showsReserve ? <TeamRosterGroupList group="reserve" {...props} /> : null}
    </div>
  );
};
