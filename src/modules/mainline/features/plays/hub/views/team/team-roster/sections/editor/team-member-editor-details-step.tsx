import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { SheetSection } from "@/shared/components/sheet-section";
import { EmptyState } from "@/shared/components/empty-state";
import { toItemOptions } from "@/modules/mainline/shared/components/item-options";
import { getItemImageUrl } from "@/modules/reference/features/items/data/item-images";
import { ItemIcon } from "@/shared/components/item-icon";
import { SelectControl } from "@/shared/components/select-control";
import { Field } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";

import type {
  TeamMemberEditorOptions,
  TeamMemberEditorSupport,
} from "../../utils/team-member-editor-model";
import {
  EditorLabel,
  fromSelect,
  selectValue,
  toSelectOptions,
  type TeamMemberEditorStepProps,
} from "./team-member-editor-fields";
import { TeamMemberBuildFields } from "./team-member-build-fields";

/*
 * What it already has stays pickable when the game's list doesn't offer it
 * (recorded before the lists followed each game), as moves it knows do.
 */
const keptChoice = (
  offered: readonly { id: number }[],
  id: number | null,
  name: string | null,
  slug: string | null,
  kind: "ball" | "held",
) =>
  id !== null && name && !offered.some((option) => option.id === id)
    ? [
        {
          group: "Recorded before",
          icon: (
            <ItemIcon kind={kind} name={name} src={getItemImageUrl(slug)} />
          ),
          label: name,
          value: String(id),
        },
      ]
    : [];

export type TeamMemberEditorOptionsState =
  | { status: "loading" }
  | { message: string; status: "error" }
  | { options: TeamMemberEditorOptions; status: "ready" };

/*
 * Details: nature, ability, held item, Poké Ball and Tera Type (each offered
 * only where the Play's game records it, once the choices have loaded), then
 * where and at what level you met it.
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
    "abilities" | "heldItems" | "natures" | "terastal"
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
      <div className="grid gap-4 sm:grid-cols-2">
        <TeamMemberBuildFields
          change={change}
          edited={edited}
          id={id}
          keptHeldItem={keptChoice(
            optionsState.options.heldItems,
            member.held_item_id,
            member.held_item_name,
            member.heldItemSlug,
            "held",
          )}
          options={optionsState.options}
          supports={supports}
          values={values}
        />
        <Field>
          <EditorLabel edited={edited("ballItemId")}>Poké Ball</EditorLabel>
          <SelectControl
            ariaLabel="Poké Ball"
            placeholder="Not recorded"
            value={selectValue(values.ballItemId)}
            onValueChange={(value) => change("ballItemId", fromSelect(value))}
            options={[
              ...toItemOptions(optionsState.options.balls, "ball"),
              ...keptChoice(
                optionsState.options.balls,
                member.ball_item_id,
                member.ball_item_name,
                member.ballItemSlug,
                "ball",
              ),
            ]}
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
              onValueChange={(value) => change("teraTypeId", fromSelect(value))}
              options={toSelectOptions(optionsState.options.teraTypes)}
            />
          </Field>
        ) : null}
      </div>
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
