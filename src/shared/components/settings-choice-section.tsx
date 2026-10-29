"use client";

import { useState, useTransition, type ReactNode } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { FieldError } from "@/shared/components/ui/field";
import { UnsavedChangesFooter } from "@/shared/components/unsaved-changes-footer";

/* What a card's save answers: a message for the toast, or for the card's error. */
export type SettingsSaveResult = {
  message: string;
  status: "error" | "success";
};

/*
 * A Settings card of one or more choices (a Play's rules, tags, expansions
 * and tracking, or your Motion and New Play defaults): the field that picks
 * them, and Save and Cancel once they change. The choices reach the server
 * together with the card's Save.
 */
export const SettingsChoiceSection = <Value,>({
  aside,
  id,
  initialValue,
  isEqual,
  onSave,
  renderField,
  title,
  validate,
}: {
  aside?: string;
  id: string;
  initialValue: Value;
  isEqual: (left: Value, right: Value) => boolean;
  onSave: (value: Value) => Promise<SettingsSaveResult>;
  renderField: (field: {
    disabled: boolean;
    onChange: (value: Value) => void;
    value: Value;
  }) => ReactNode;
  title: string;
  /* Why the value can't be saved yet, such as Monotype without its type. */
  validate?: (value: Value) => string | null;
}) => {
  const router = useRouter();
  const [value, setValue] = useState(initialValue);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startTransition] = useTransition();
  const isDirty = !isEqual(initialValue, value);

  const save = () => {
    const invalid = validate?.(value) ?? null;

    if (invalid) {
      setError(invalid);
      return;
    }

    startTransition(async () => {
      const result = await onSave(value);

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      toast.success(result.message);
      router.refresh();
    });
  };

  return (
    <DetailSectionCard id={id} title={title} aside={aside}>
      {renderField({
        disabled: isSaving,
        onChange: (next) => {
          setValue(next);
          setError(null);
        },
        value,
      })}

      {error ? <FieldError className="mt-3">{error}</FieldError> : null}

      {isDirty ? (
        <UnsavedChangesFooter
          isSaving={isSaving}
          onCancel={() => {
            setValue(initialValue);
            setError(null);
          }}
          onSave={save}
        />
      ) : null}
    </DetailSectionCard>
  );
};
