import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { SheetSection } from "@/shared/components/sheet-section";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { SwitchField } from "@/shared/components/switch-field";

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
    <div
      className={
        supportsGender
          ? "grid min-w-0 gap-4 sm:grid-cols-[minmax(0,1fr)_minmax(0,2fr)]"
          : "grid min-w-0 gap-4"
      }
    >
      <Field>
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
        <Field className="min-w-0">
          <EditorLabel edited={edited("gender")}>
            <span id={`${id}-gender`}>Gender</span>
          </EditorLabel>
          <SegmentedControl
            ariaLabel="Gender"
            variant="segment"
            fullWidth
            value={values.gender}
            onValueChange={(value) => change("gender", value)}
            options={genderOptions}
          />
        </Field>
      ) : null}
    </div>
    <div className="grid gap-4 sm:grid-cols-2">
      <SwitchField
        label="Shiny"
        edited={edited("isShiny")}
        checked={values.isShiny}
        onCheckedChange={(checked) => change("isShiny", checked)}
      />
      {supportsGigantamax ? (
        <SwitchField
          label="Can Gigantamax"
          edited={edited("hasGigantamaxFactor")}
          checked={values.hasGigantamaxFactor}
          onCheckedChange={(checked) => change("hasGigantamaxFactor", checked)}
        />
      ) : null}
    </div>
  </SheetSection>
);
