import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { SheetSection } from "@/shared/components/sheet-section";
import { SlotPicker } from "@/shared/components/slot-picker";
import { Field, FieldDescription } from "@/shared/components/ui/field";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

import {
  getRosterSlotGroups,
  teamNeedsOneMessage,
} from "../../utils/roster-moves";

/*
 * Slot: the move without dragging, for a keyboard or a phone. Picking a slot
 * moves it straight away, like Evolve; a taken slot swaps the two.
 */
export const TeamMemberEditorWhereStep = ({
  isMoving,
  member,
  onMove,
  placeLabel,
  roster,
}: {
  isMoving: boolean;
  member: MainlinePlayTeamMember;
  onMove: (playPokemonId: string, toSlot: number) => void;
  placeLabel: string;
  roster: readonly MainlinePlayTeamMember[];
}) => {
  const playPokemonId = member.play_pokemon_id ?? "";
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

  return (
    <SheetSection title="Slot" aside={placeLabel}>
      <Field>
        {/* While a move saves, every square waits. */}
        <fieldset disabled={isMoving} className="m-0 min-w-0 border-0 p-0">
          <SlotPicker
            ariaLabel={`Move ${getPlayTeamMemberName(member)} to`}
            groups={getRosterSlotGroups(roster, playPokemonId)}
            selected={member.slot}
            onPick={(slot) => onMove(playPokemonId, slot)}
          />
        </fieldset>
        <FieldDescription>
          {isLastOnTeam
            ? hasReserve
              ? `${teamNeedsOneMessage} It can still swap with a reserve Pokémon.`
              : teamNeedsOneMessage
            : "It moves straight away. A taken slot swaps the two Pokémon."}
        </FieldDescription>
      </Field>
    </SheetSection>
  );
};
