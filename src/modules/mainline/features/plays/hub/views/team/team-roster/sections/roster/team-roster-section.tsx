import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { playTeamSize } from "@/modules/mainline/features/plays/shared/utils/play-team-slots";
import {
  PokemonEmptySlot,
  PokemonSticker,
} from "@/modules/reference/features/pokemon/components/pokemon-sticker";

import { getTeamMemberIdentity } from "../../utils/team-member-display";
import { getTeamRosterSlots, type TeamRosterGroup } from "./team-roster-model";

type TeamRosterSectionProps = {
  onSelect: (member: MainlinePlayTeamMember) => void;
  roster: MainlinePlayTeamMember[];
  selectedMemberId: string | null;
};

const groupTitles: Record<TeamRosterGroup, string> = {
  active: "Active team",
  reserve: "Reserve",
};

type TeamRosterStickerProps = {
  member: MainlinePlayTeamMember;
  onSelect: (member: MainlinePlayTeamMember) => void;
  selected: boolean;
  slotLabel: string;
  slotName: string;
};

/* A roster Pokémon as a compact sticker that opens its detail. */
const TeamRosterSticker = ({
  member,
  onSelect,
  selected,
  slotLabel,
  slotName,
}: TeamRosterStickerProps) => {
  const name = getPlayTeamMemberName(member);
  const identity = getTeamMemberIdentity(member);
  const level = member.level ? `Lv. ${member.level}` : null;

  return (
    <PokemonSticker
      variant="compact"
      className="size-full"
      imageUrl={getPlayTeamMemberImageUrl(member)}
      name={name}
      subtitle={[identity, level].filter(Boolean).join(" · ")}
      types={[member.primaryType, member.secondaryType].filter(
        (type) => type !== null,
      )}
      shiny={member.is_shiny === true}
      slotLabel={slotLabel}
      selected={selected}
      onClick={() => onSelect(member)}
      label={[name, identity, level, member.is_shiny ? "Shiny" : null, slotName]
        .filter(Boolean)
        .join(", ")}
    />
  );
};

const TeamRosterGroupList = ({
  group,
  onSelect,
  roster,
  selectedMemberId,
}: TeamRosterSectionProps & {
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
          {filledCount} / {playTeamSize}
        </span>
      </h3>
      <ul className="grid grid-cols-2 gap-x-4 gap-y-[18px] sm:grid-cols-3">
        {slots.map((slot) => (
          <li key={slot.position} className="min-w-0">
            {slot.member ? (
              <TeamRosterSticker
                member={slot.member}
                onSelect={onSelect}
                selected={slot.member.play_pokemon_id === selectedMemberId}
                slotLabel={slot.label}
                slotName={`${groupName} slot ${slot.position}`}
              />
            ) : (
              <PokemonEmptySlot
                label={`Empty ${groupName.toLowerCase()} slot ${slot.position}`}
                variant="compact"
                className="text-14 h-full"
              />
            )}
          </li>
        ))}
      </ul>
    </section>
  );
};

/*
 * Your team and reserve as stickers: the loud part of the page. The reserve
 * always shows its six slots, as v3 does.
 */
export const TeamRosterSection = (props: TeamRosterSectionProps) => {
  return (
    <div className="grid min-w-0 content-start gap-6.5">
      <TeamRosterGroupList group="active" {...props} />
      <TeamRosterGroupList group="reserve" {...props} />
    </div>
  );
};
