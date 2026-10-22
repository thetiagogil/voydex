import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { SheetSection } from "@/shared/components/sheet-section";
import { SlotPicker } from "@/shared/components/slot-picker";

import { getRosterSlotGroups } from "../../utils/roster-moves";

/*
 * Slot: where it sits, for a keyboard or a phone. Picking a square only marks
 * it and previews the team after the move; the move, or a swap with whoever
 * is there, happens when you save.
 */
export const TeamMemberEditorWhereStep = ({
  member,
  onPick,
  roster,
  slot,
}: {
  member: MainlinePlayTeamMember;
  onPick: (slot: number) => void;
  roster: readonly MainlinePlayTeamMember[];
  /* The slot picked so far, 1 to 12; the Pokémon's own until another is. */
  slot: number;
}) => (
  <SheetSection title="Slot">
    <SlotPicker
      ariaLabel={`Move ${getPlayTeamMemberName(member)} to`}
      groups={getRosterSlotGroups(roster, member.play_pokemon_id ?? "", slot)}
      selected={slot}
      onPick={onPick}
    />
  </SheetSection>
);
