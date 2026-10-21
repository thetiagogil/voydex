import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { FallbackImage } from "@/shared/components/fallback-image";
import { SelectControl } from "@/shared/components/select-control";
import { SheetSection } from "@/shared/components/sheet-section";
import {
  Field,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";

import {
  formatRosterSlot,
  getRosterMove,
  isTeamSlot,
  rosterSlots,
  teamNeedsOneMessage,
} from "../../utils/roster-moves";

/*
 * Where: the move without dragging, for a keyboard or a phone. Picking a
 * slot moves it straight away, like Evolve; a taken slot swaps the two.
 */
export const TeamMemberEditorWhereStep = ({
  id,
  isMoving,
  member,
  onMove,
  placeLabel,
  roster,
}: {
  id: string;
  isMoving: boolean;
  member: MainlinePlayTeamMember;
  onMove: (playPokemonId: string, toSlot: number) => void;
  placeLabel: string;
  roster: readonly MainlinePlayTeamMember[];
}) => {
  const playPokemonId = member.play_pokemon_id ?? "";
  const options = rosterSlots.map((slot) => {
    const move = getRosterMove(roster, playPokemonId, slot);
    const occupant =
      move.kind === "swap" ? move.with : move.kind === "stay" ? member : null;

    return {
      description:
        move.kind === "stay"
          ? "Here now"
          : move.kind === "swap"
            ? `Swap with ${getPlayTeamMemberName(move.with)}`
            : move.kind === "blocked"
              ? move.reason
              : "Open",
      disabled: move.kind === "blocked",
      icon: occupant ? (
        <FallbackImage
          src={getPlayTeamMemberImageUrl(occupant)}
          name={getPlayTeamMemberName(occupant)}
          className="size-8"
        />
      ) : (
        <AppIcon
          icon={
            isTeamSlot(slot) ? appIcons.product.team : appIcons.product.reserve
          }
          size="md"
        />
      ),
      label: formatRosterSlot(slot),
      value: String(slot),
    };
  });
  const isLastOnTeam = options.some(
    (option) => option.disabled && option.description === teamNeedsOneMessage,
  );

  return (
    <SheetSection title="Where" aside={placeLabel}>
      <Field>
        <FieldLabel htmlFor={`${id}-where`}>Move to</FieldLabel>
        <SelectControl
          id={`${id}-where`}
          ariaLabel={`Move ${getPlayTeamMemberName(member)} to`}
          className="w-full"
          options={options}
          placeholder="Pick a slot"
          searchable={false}
          value={member.slot ? String(member.slot) : ""}
          onValueChange={(value) => {
            const toSlot = Number(value);

            if (!isMoving && toSlot) {
              onMove(playPokemonId, toSlot);
            }
          }}
        />
        <FieldDescription>
          {isLastOnTeam
            ? `${teamNeedsOneMessage} It can still swap with a reserve Pokémon.`
            : "It moves straight away. A taken slot swaps the two Pokémon."}
        </FieldDescription>
      </Field>
    </SheetSection>
  );
};
