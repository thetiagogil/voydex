import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { SheetSection } from "@/shared/components/sheet-section";
import { SlotPicker } from "@/shared/components/slot-picker";
import { Field, FieldDescription } from "@/shared/components/ui/field";

import {
  formatRosterSlot,
  getRosterMove,
  getRosterSlotGroups,
  teamNeedsOneMessage,
} from "../../utils/roster-moves";

/*
 * Slot: where it sits, for a keyboard or a phone. Picking a square only marks
 * it; the move, or a swap with whoever is there, happens when you save.
 */
export const TeamMemberEditorWhereStep = ({
  member,
  onPick,
  placeLabel,
  roster,
  slot,
}: {
  member: MainlinePlayTeamMember;
  onPick: (slot: number) => void;
  placeLabel: string;
  roster: readonly MainlinePlayTeamMember[];
  /* The slot picked so far, 1 to 12; the Pokémon's own until another is. */
  slot: number;
}) => {
  const playPokemonId = member.play_pokemon_id ?? "";
  const move = getRosterMove(roster, playPokemonId, slot);
  const isLastOnTeam =
    member.roster_state_slug === "active" &&
    !roster.some(
      (other) =>
        other.play_pokemon_id !== playPokemonId &&
        other.roster_state_slug === "active",
    );
  const hasReserve = roster.some(
    (other) => other.roster_state_slug === "reserve",
  );
  const description =
    move.kind === "swap"
      ? `Saving swaps it with ${getPlayTeamMemberName(move.with)}.`
      : move.kind === "move"
        ? `Saving moves it to ${formatRosterSlot(move.toSlot)}.`
        : isLastOnTeam
          ? hasReserve
            ? `${teamNeedsOneMessage} It can still swap with a reserve Pokémon.`
            : teamNeedsOneMessage
          : "Pick a slot to move it. A taken slot swaps the two Pokémon.";

  return (
    <SheetSection title="Slot" aside={placeLabel}>
      <Field>
        <SlotPicker
          ariaLabel={`Move ${getPlayTeamMemberName(member)} to`}
          groups={getRosterSlotGroups(roster, playPokemonId)}
          selected={slot}
          onPick={onPick}
        />
        <FieldDescription>{description}</FieldDescription>
      </Field>
    </SheetSection>
  );
};
