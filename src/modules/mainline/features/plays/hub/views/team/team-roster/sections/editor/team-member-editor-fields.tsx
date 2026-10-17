import type { ReactNode } from "react";

import { EditedMark } from "@/shared/components/edited-mark";
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
