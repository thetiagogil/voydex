import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { SheetSection } from "@/shared/components/sheet-section";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { EditedMark } from "@/shared/components/edited-mark";
import { SettingsRow } from "@/shared/components/settings-row";
import { Switch } from "@/shared/components/ui/switch";

import {
  EditorLabel,
  type TeamMemberEditorStepProps,
} from "./team-member-editor-fields";

const genderOptions = [
  { label: "Male", value: "male" },
  { label: "Female", value: "female" },
  { label: "Genderless", value: "genderless" },
  { label: "Not recorded", value: "unknown" },
] as const;

const yesNo = ["No", "Yes"] as const;

/*
 * Who: its species (fixed here), nickname, level, gender, shininess and, where
 * its game has it, whether it can Gigantamax.
 */
export const TeamMemberEditorWhoStep = ({
  change,
  edited,
  id,
  member,
  supportsGender,
  supportsGigantamax,
  values,
}: TeamMemberEditorStepProps & {
  member: MainlinePlayTeamMember;
  supportsGender: boolean;
  supportsGigantamax: boolean;
}) => (
  <SheetSection title="Who">
    <div className="grid gap-4 sm:grid-cols-2">
      <Field>
        <FieldLabel htmlFor={`${id}-species`}>Species</FieldLabel>
        {/* It can't change here: Evolve and Change form do that. */}
        <Input
          id={`${id}-species`}
          readOnly
          value={[
            member.species_name,
            member.form_name && member.form_name !== member.species_name
              ? member.form_name
              : null,
          ]
            .filter(Boolean)
            .join(" · ")}
          className="text-ink-2 cursor-default"
        />
      </Field>
      <Field>
        <EditorLabel htmlFor={`${id}-nickname`} edited={edited("nickname")}>
          Nickname
        </EditorLabel>
        <Input
          id={`${id}-nickname`}
          maxLength={100}
          autoComplete="off"
          placeholder={member.species_name ?? undefined}
          value={values.nickname}
          onChange={(event) => change("nickname", event.target.value)}
        />
      </Field>
    </div>
    <div className="flex min-w-0 flex-wrap items-end gap-x-5.5 gap-y-4">
      <Field className="w-35">
        <EditorLabel htmlFor={`${id}-level`} edited={edited("level")}>
          Level
        </EditorLabel>
        <Input
          id={`${id}-level`}
          type="number"
          inputMode="numeric"
          min={1}
          max={100}
          placeholder="—"
          value={values.level}
          onChange={(event) => change("level", event.target.value)}
        />
      </Field>
      {supportsGender ? (
        <Field className="w-auto max-w-full min-w-0">
          <EditorLabel edited={edited("gender")}>
            <span id={`${id}-gender`}>Gender</span>
          </EditorLabel>
          <SegmentedControl
            ariaLabel="Gender"
            variant="segment"
            value={values.gender}
            onValueChange={(value) => change("gender", value)}
            options={genderOptions}
          />
        </Field>
      ) : null}
    </div>
    <SettingsRow
      inline
      className="py-0"
      title={<EditedMark edited={edited("isShiny")}>Shiny</EditedMark>}
      titleId={`${id}-shiny`}
    >
      <Switch
        size="lg"
        labels={yesNo}
        aria-labelledby={`${id}-shiny`}
        checked={values.isShiny}
        onCheckedChange={(checked) => change("isShiny", checked)}
      />
    </SettingsRow>
    {supportsGigantamax ? (
      <SettingsRow
        inline
        className="py-0"
        title={
          <EditedMark edited={edited("hasGigantamaxFactor")}>
            Can Gigantamax
          </EditedMark>
        }
        titleId={`${id}-gigantamax`}
        description="It has the Gigantamax Factor and can take its special form."
      >
        <Switch
          size="lg"
          labels={yesNo}
          aria-labelledby={`${id}-gigantamax`}
          checked={values.hasGigantamaxFactor}
          onCheckedChange={(checked) => change("hasGigantamaxFactor", checked)}
        />
      </SettingsRow>
    ) : null}
  </SheetSection>
);
