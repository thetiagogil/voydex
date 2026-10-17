import type { ReactNode } from "react";

import { FieldLabel } from "@/shared/components/ui/field";

import type {
  TeamMemberEditorField,
  TeamMemberEditorValues,
} from "../../utils/team-member-editor-model";

/* What every step of the editor needs to read and change its fields. */
export type TeamMemberEditorStepProps = {
  change: <TField extends TeamMemberEditorField>(
    field: TField,
    value: TeamMemberEditorValues[TField],
  ) => void;
  edited: (field: TeamMemberEditorField) => boolean;
  /* The sheet's `useId`, the prefix of every field id. */
  id: string;
  values: TeamMemberEditorValues;
};

export const noneValue = "none";

export const selectValue = (value: string) => value || noneValue;

export const fromSelect = (value: string) => (value === noneValue ? "" : value);

export const toSelectOptions = (options: { id: number; name: string }[]) => [
  { label: "Not recorded", value: noneValue },
  ...options.map((option) => ({
    label: option.name,
    value: String(option.id),
  })),
];

/*
 * A field's label, marked once it changed: a dot that takes no width from
 * the row (so an inline field never wraps), named "Edited" for screen
 * readers and on hover. The footer lists every change.
 */
export const EditedMark = ({
  children,
  edited,
}: {
  children: ReactNode;
  edited: boolean;
}) => (
  <span className="relative">
    {children}
    {edited ? (
      <span
        title="Edited"
        className="bg-action-ink absolute top-1/2 -right-3 size-1.5 -translate-y-1/2 rounded-full"
      >
        <span className="sr-only">, edited</span>
      </span>
    ) : null}
  </span>
);

export const EditorLabel = ({
  children,
  edited,
  htmlFor,
}: {
  children: ReactNode;
  edited: boolean;
  htmlFor?: string;
}) => (
  <FieldLabel htmlFor={htmlFor}>
    <EditedMark edited={edited}>{children}</EditedMark>
  </FieldLabel>
);
