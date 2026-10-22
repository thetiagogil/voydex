import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { SheetSection } from "@/shared/components/sheet-section";
import { EmptyState } from "@/shared/components/empty-state";
import { EditedMark } from "@/shared/components/edited-mark";
import { SearchSelect } from "@/shared/components/search-select";
import { SelectControl } from "@/shared/components/select-control";
import { SettingsRow } from "@/shared/components/settings-row";
import { Field } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";
import { Switch } from "@/shared/components/ui/switch";

import type {
  TeamMemberEditorOptions,
  TeamMemberEditorSupport,
} from "../../utils/team-member-editor-model";
import {
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

/*
 * Details: nature, ability, held item, Poké Ball, Tera Type and Gigantamax
 * Factor (each offered only where the Play's game records it, once the
 * choices have loaded), then where and at what level you met it.
 */
export const TeamMemberEditorDetailsStep = ({
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
  supports: Pick<
    TeamMemberEditorSupport,
    "abilities" | "gigantamax" | "heldItems" | "natures" | "terastal"
  >;
}) => {
  const optionFields =
    optionsState.status === "error" ? (
      <EmptyState variant="bare" title={optionsState.message} />
    ) : optionsState.status === "loading" ? (
      <div className="grid place-items-center py-6">
        <Spinner
          aria-label="Loading what it can record"
          className="text-action"
        />
      </div>
    ) : (
      <>
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
                  ...optionsState.options.natures.map((nature) => ({
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
                onValueChange={(value) =>
                  change("abilityId", fromSelect(value))
                }
                options={toSelectOptions(optionsState.options.abilities)}
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
                options={optionsState.options.heldItems.map((item) => ({
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
              options={toSelectOptions(optionsState.options.balls)}
            />
          </Field>
          {supports.terastal ? (
            <Field>
              <EditorLabel edited={edited("teraTypeId")}>Tera Type</EditorLabel>
              <SelectControl
                ariaLabel="Tera Type"
                disabled={member.fixed_tera_type_id !== null}
                placeholder="Not recorded"
                value={selectValue(values.teraTypeId)}
                onValueChange={(value) =>
                  change("teraTypeId", fromSelect(value))
                }
                options={toSelectOptions(optionsState.options.teraTypes)}
              />
            </Field>
          ) : null}
        </div>
        {supports.gigantamax ? (
          <SettingsRow
            inline
            className="min-h-12 py-0"
            title={
              <EditedMark edited={edited("hasGigantamaxFactor")}>
                Gigantamax Factor
              </EditedMark>
            }
            titleId={`${id}-gigantamax`}
            description="Lets it Gigantamax into its special form."
          >
            <Switch
              aria-labelledby={`${id}-gigantamax`}
              checked={values.hasGigantamaxFactor}
              onCheckedChange={(checked) =>
                change("hasGigantamaxFactor", checked)
              }
            />
          </SettingsRow>
        ) : null}
      </>
    );

  return (
    <SheetSection title="Details" aside="Optional">
      {optionFields}
      <div className="grid gap-4 sm:grid-cols-[minmax(0,1fr)_120px]">
        <Field>
          <EditorLabel htmlFor={`${id}-met`} edited={edited("metLocation")}>
            Met location
          </EditorLabel>
          <Input
            id={`${id}-met`}
            maxLength={200}
            placeholder="Not recorded"
            value={values.metLocation}
            onChange={(event) => change("metLocation", event.target.value)}
          />
        </Field>
        <Field>
          <EditorLabel htmlFor={`${id}-met-level`} edited={edited("metLevel")}>
            Met level
          </EditorLabel>
          <Input
            id={`${id}-met-level`}
            type="number"
            inputMode="numeric"
            min={1}
            max={100}
            placeholder="Not recorded"
            value={values.metLevel}
            onChange={(event) => change("metLevel", event.target.value)}
          />
        </Field>
      </div>
    </SheetSection>
  );
};
