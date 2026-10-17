import { SheetSection } from "@/shared/components/sheet-section";
import { Field } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Textarea } from "@/shared/components/ui/textarea";

import {
  EditorLabel,
  type TeamMemberEditorStepProps,
} from "./team-member-editor-fields";

/* Met: where and at what level you met it, and your notes. */
export const TeamMemberEditorMetStep = ({
  change,
  edited,
  id,
  values,
}: TeamMemberEditorStepProps) => (
  <SheetSection title="Met" aside="Optional">
    <div className="grid gap-4 sm:grid-cols-[minmax(0,1fr)_120px]">
      <Field>
        <EditorLabel htmlFor={`${id}-met`} edited={edited("metLocation")}>
          Location
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
          Level
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
    <Field>
      <EditorLabel htmlFor={`${id}-notes`} edited={edited("notes")}>
        Notes
      </EditorLabel>
      <Textarea
        id={`${id}-notes`}
        maxLength={5000}
        rows={3}
        value={values.notes}
        onChange={(event) => change("notes", event.target.value)}
      />
    </Field>
  </SheetSection>
);
