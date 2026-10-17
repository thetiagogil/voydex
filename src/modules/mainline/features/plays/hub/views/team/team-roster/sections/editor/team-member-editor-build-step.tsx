import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  MoveSlotSelect,
  type MoveSlotOption,
} from "@/modules/mainline/shared/components/move-slot-select";
import { SheetSection } from "@/shared/components/sheet-section";
import { EmptyState } from "@/shared/components/empty-state";
import { SearchSelect } from "@/shared/components/search-select";
import { SelectControl } from "@/shared/components/select-control";
import { Field } from "@/shared/components/ui/field";
import { Spinner } from "@/shared/components/ui/spinner";

import type {
  TeamMemberEditorOptions,
  TeamMemberEditorValues,
} from "../../utils/team-member-editor-model";
import {
  EditedMark,
  EditorLabel,
  fromSelect,
  noneValue,
  selectValue,
  toSelectOptions,
  type TeamMemberEditorStepProps,
} from "./team-member-editor-fields";

export type TeamMemberEditorOptionsState =
  | { status: "loading" }
  | { message: string; status: "error" }
  | { options: TeamMemberEditorOptions; status: "ready" };

const toMoveOptions = (
  options: TeamMemberEditorOptions,
  member: MainlinePlayTeamMember,
): MoveSlotOption[] => [
  ...options.moves.map((move) => ({
    category: move.damageClass,
    label: move.name,
    typeName: move.typeName,
    typeSlug: move.typeSlug,
    value: String(move.id),
  })),
  /* Moves it knows that its learnset here doesn't list stay pickable. */
  ...member.moves
    .filter((move) => !options.moves.some((option) => option.id === move.id))
    .map((move) => ({
      label: move.name,
      typeName: move.type?.name ?? null,
      typeSlug: move.type?.slug ?? null,
      value: String(move.id),
    })),
];

/*
 * Build: nature, ability, held item, Poké Ball and four moves, offered only
 * where the Play's game records them, once the choices have loaded.
 */
export const TeamMemberEditorBuildStep = ({
  change,
  edited,
  id,
  member,
  optionsState,
  supports,
  values,
}: TeamMemberEditorStepProps & {
  member: MainlinePlayTeamMember;
  optionsState: TeamMemberEditorOptionsState;
  supports: { abilities: boolean; heldItems: boolean; natures: boolean };
}) => {
  if (optionsState.status !== "ready") {
    return (
      <SheetSection title="Build" aside="Optional">
        {optionsState.status === "error" ? (
          <EmptyState variant="bare" title={optionsState.message} />
        ) : (
          <div className="grid place-items-center py-6">
            <Spinner
              aria-label="Loading what it can record"
              className="text-action"
            />
          </div>
        )}
      </SheetSection>
    );
  }

  const { options } = optionsState;
  const moveOptions = toMoveOptions(options, member);

  return (
    <SheetSection title="Build" aside="Optional">
      <div className="grid gap-4 sm:grid-cols-2">
        {supports.natures ? (
          <Field>
            <EditorLabel edited={edited("natureId")}>Nature</EditorLabel>
            <SelectControl
              ariaLabel="Nature"
              placeholder="Not recorded"
              value={selectValue(values.natureId)}
              onValueChange={(value) => change("natureId", fromSelect(value))}
              options={[
                { label: "Not recorded", value: noneValue },
                ...options.natures.map((nature) => ({
                  description:
                    nature.increased && nature.decreased
                      ? `+${nature.increased} · −${nature.decreased}`
                      : undefined,
                  label: nature.name,
                  value: String(nature.id),
                })),
              ]}
            />
          </Field>
        ) : null}
        {supports.abilities ? (
          <Field>
            <EditorLabel edited={edited("abilityId")}>Ability</EditorLabel>
            <SelectControl
              ariaLabel="Ability"
              placeholder="Not recorded"
              value={selectValue(values.abilityId)}
              onValueChange={(value) => change("abilityId", fromSelect(value))}
              options={toSelectOptions(options.abilities)}
            />
          </Field>
        ) : null}
        {supports.heldItems ? (
          <Field>
            <EditorLabel htmlFor={`${id}-item`} edited={edited("heldItemId")}>
              Held item
            </EditorLabel>
            <SearchSelect
              id={`${id}-item`}
              value={values.heldItemId || null}
              onValueChange={(value) => change("heldItemId", value ?? "")}
              options={options.heldItems.map((item) => ({
                label: item.name,
                value: String(item.id),
              }))}
            />
          </Field>
        ) : null}
        <Field>
          <EditorLabel edited={edited("ballItemId")}>Poké Ball</EditorLabel>
          <SelectControl
            ariaLabel="Poké Ball"
            placeholder="Not recorded"
            value={selectValue(values.ballItemId)}
            onValueChange={(value) => change("ballItemId", fromSelect(value))}
            options={toSelectOptions(options.balls)}
          />
        </Field>
      </div>
      <fieldset className="grid gap-2.5">
        <legend className="text-14 mb-2 font-extrabold">
          <EditedMark edited={edited("moveIds")}>Moves</EditedMark>
        </legend>
        <div className="grid gap-2.5 sm:grid-cols-2">
          {values.moveIds.map((moveId, index) => (
            <MoveSlotSelect
              key={index}
              slot={index + 1}
              value={moveId || null}
              onValueChange={(value) => {
                const next = [
                  ...values.moveIds,
                ] as TeamMemberEditorValues["moveIds"];
                next[index] = value ?? "";
                change("moveIds", next);
              }}
              options={moveOptions.filter(
                (option) =>
                  option.value === moveId ||
                  !values.moveIds.includes(option.value),
              )}
            />
          ))}
        </div>
      </fieldset>
    </SheetSection>
  );
};
