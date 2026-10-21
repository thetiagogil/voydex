"use client";

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
import {
  slotDragSourceClassName,
  useSlotDrag,
} from "@/shared/hooks/use-slot-drag";
import { cn } from "@/shared/utils/cn";

import { getRosterMove } from "../../utils/roster-moves";

import { getTeamRosterSlots, type TeamRosterGroup } from "./team-roster-model";

type TeamRosterSectionProps = {
  /* The names of the Play's rules each Pokémon breaks, by its id. */
  brokenRulesById: Record<string, string[]>;
  /* A move is saving: dragging waits until it lands. */
  isMoving: boolean;
  /* Drops a Pokémon on a stored slot, 1 to 12; a taken slot swaps. */
  onMove: (playPokemonId: string, toSlot: number) => void;
  onSelect: (member: MainlinePlayTeamMember) => void;
  roster: MainlinePlayTeamMember[];
  selectedMemberId: string | null;
};

const groupTitles: Record<TeamRosterGroup, string> = {
  active: "Active team",
  reserve: "Reserve",
};

type TeamRosterStickerProps = {
  brokenRules: string[];
  dropTarget: boolean;
  member: MainlinePlayTeamMember;
  onSelect: (member: MainlinePlayTeamMember) => void;
  selected: boolean;
  slotLabel: string;
  slotName: string;
};

/* One drag shared by both groups: a Pokémon's id onto a stored slot. */
type RosterDrag = ReturnType<typeof useSlotDrag<string, number>>;

/*
 * A roster Pokémon as a compact sticker that opens its detail: one name (the
 * nickname, or the species without one), its level as a chip, and a warning
 * mark when it breaks the Play's rules.
 */
const TeamRosterSticker = ({
  brokenRules,
  dropTarget,
  member,
  onSelect,
  selected,
  slotLabel,
  slotName,
}: TeamRosterStickerProps) => {
  const name = getPlayTeamMemberName(member);

  return (
    <PokemonSticker
      variant="compact"
      className="size-full"
      target={dropTarget}
      imageUrl={getPlayTeamMemberImageUrl(member)}
      name={name}
      level={member.level}
      types={[member.primaryType, member.secondaryType].filter(
        (type) => type !== null,
      )}
      shiny={member.is_shiny === true}
      slotLabel={slotLabel}
      selected={selected}
      onClick={() => onSelect(member)}
      detail={slotName}
      warning={
        brokenRules.length
          ? `Breaks this Play's rules: ${brokenRules.join(", ")}`
          : undefined
      }
    />
  );
};

const TeamRosterGroupList = ({
  brokenRulesById,
  drag,
  group,
  isMoving,
  onSelect,
  roster,
  selectedMemberId,
}: TeamRosterSectionProps & {
  drag: RosterDrag;
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
      <ul className="grid grid-cols-2 gap-x-4 gap-y-4.5 sm:grid-cols-3">
        {slots.map((slot) => {
          const storedSlot =
            slot.position + (group === "active" ? 0 : playTeamSize);
          const memberId = slot.member?.play_pokemon_id ?? null;
          return (
            <li
              key={slot.position}
              {...(memberId
                ? drag.sourceProps(memberId, { disabled: isMoving })
                : {})}
              {...drag.targetProps(storedSlot, { item: memberId })}
              className={cn(
                "min-w-0",
                slotDragSourceClassName,
                drag.dragging !== null &&
                  drag.dragging === memberId &&
                  "opacity-60",
              )}
            >
              {slot.member ? (
                <TeamRosterSticker
                  brokenRules={
                    brokenRulesById[slot.member.play_pokemon_id ?? ""] ?? []
                  }
                  dropTarget={drag.isOver(storedSlot)}
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
                  target={drag.isOver(storedSlot)}
                />
              )}
            </li>
          );
        })}
      </ul>
    </section>
  );
};

/*
 * Your team and reserve as stickers: the loud part of the page. The reserve
 * always shows its six slots, as v3 does. Drag a Pokémon onto another slot,
 * in either group, to move it there or swap with the one there; the editor's
 * Where does the same without dragging.
 */
export const TeamRosterSection = (props: TeamRosterSectionProps) => {
  /*
   * A refused drop, such as the team's last Pokémon onto an empty reserve
   * slot, shows no ring; dropped anyway, it snaps back and the toast says why.
   */
  const drag = useSlotDrag<string, number>({
    accepts: (playPokemonId, slot) =>
      getRosterMove(props.roster, playPokemonId, slot).kind !== "blocked",
    onDrop: props.onMove,
  });

  return (
    <div className="grid min-w-0 content-start gap-6.5">
      <TeamRosterGroupList group="active" drag={drag} {...props} />
      <TeamRosterGroupList group="reserve" drag={drag} {...props} />
    </div>
  );
};
