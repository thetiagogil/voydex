import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  MoveSlotGrid,
  toMoveSlotOptions,
  type MoveSlotOption,
} from "@/modules/mainline/shared/components/move-slot-select";
import { EditedMark } from "@/shared/components/edited-mark";
import { SheetSection } from "@/shared/components/sheet-section";

import type {
  TeamMemberEditorOptions,
  TeamMemberEditorValues,
} from "../../utils/team-member-editor-model";
import { type TeamMemberEditorStepProps } from "./team-member-editor-fields";

const toMoveOptions = (
  options: TeamMemberEditorOptions,
  member: MainlinePlayTeamMember,
): MoveSlotOption[] => [
  ...toMoveSlotOptions(options.moves),
  /* Moves it knows that its learnset here doesn't list stay pickable. */
  ...member.moves
    .filter((move) => !options.moves.some((option) => option.id === move.id))
    .map((move) => ({
      category: move.attributes?.damage_class ?? null,
      info: move.attributes?.effect_summary ?? null,
      label: move.name,
      typeName: move.type?.name ?? null,
      typeSlug: move.type?.slug ?? null,
      value: String(move.id),
    })),
];

/* Moves: its four, picked from what it can learn here once that has loaded. */
export const TeamMemberEditorMovesStep = ({
  change,
  edited,
  member,
  options,
  values,
}: Pick<TeamMemberEditorStepProps, "change" | "edited" | "values"> & {
  member: MainlinePlayTeamMember;
  options: TeamMemberEditorOptions;
}) => {
  const moveOptions = toMoveOptions(options, member);

  return (
    <SheetSection
      title={<EditedMark edited={edited("moveIds")}>Moves</EditedMark>}
      aside="Optional"
    >
      <MoveSlotGrid
        values={values.moveIds.map((moveId) => moveId || null)}
        onValueChange={(index, value) => {
          const next = [...values.moveIds] as TeamMemberEditorValues["moveIds"];
          next[index] = value ?? "";
          change("moveIds", next);
        }}
        options={moveOptions}
      />
    </SheetSection>
  );
};
