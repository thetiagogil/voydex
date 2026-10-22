import { EditedMark } from "@/shared/components/edited-mark";
import { SheetSection } from "@/shared/components/sheet-section";
import { Textarea } from "@/shared/components/ui/textarea";

import { type TeamMemberEditorStepProps } from "./team-member-editor-fields";

/* Notes: whatever you want to remember about it. */
export const TeamMemberEditorNotesStep = ({
  change,
  edited,
  id,
  values,
}: TeamMemberEditorStepProps) => (
  <SheetSection
    title="Notes"
    aside={<EditedMark edited={edited("notes")}>Optional</EditedMark>}
  >
    <Textarea
      id={`${id}-notes`}
      aria-label="Notes"
      maxLength={5000}
      rows={3}
      value={values.notes}
      onChange={(event) => change("notes", event.target.value)}
    />
  </SheetSection>
);
