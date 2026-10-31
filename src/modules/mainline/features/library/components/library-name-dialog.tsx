"use client";

import { useId, useState, useTransition } from "react";

import type { LibraryRuleKind } from "@/modules/mainline/features/library/types";
import { SelectControl } from "@/shared/components/select-control";
import { Button } from "@/shared/components/ui/button";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { Field, FieldError, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";
import { Textarea } from "@/shared/components/ui/textarea";
import { ruleDescriptionMaxLength } from "@/modules/mainline/shared/utils/library-names";

export type LibraryNameDraft = {
  /* What a rule asks, when the dialog offers it. */
  description?: string;
  kindId: number | null;
  name: string;
};

type LibraryNameDialogProps = {
  initial: LibraryNameDraft;
  /* A rule's kinds: the dialog asks for one beside the name. */
  kinds?: LibraryRuleKind[];
  maxLength: number;
  /* What the field names, such as "Rule name". */
  nameLabel: string;
  onOpenChange: (open: boolean) => void;
  /* Saves the draft; a message keeps the dialog open and shows it. */
  onSubmit: (draft: LibraryNameDraft) => Promise<string | null>;
  open: boolean;
  submitLabel: string;
  title: string;
  /* A rule's description: the dialog offers it under the kind. */
  withDescription?: boolean;
};

/*
 * Making a rule or tag: its name, and a rule's kind and what it asks. Enter
 * saves; a name you already have says so under the field.
 */
export const LibraryNameDialog = ({
  initial,
  kinds,
  maxLength,
  nameLabel,
  onOpenChange,
  onSubmit,
  open,
  submitLabel,
  title,
  withDescription = false,
}: LibraryNameDialogProps) => {
  const nameId = useId();
  const kindId = useId();
  const descriptionId = useId();
  const errorId = useId();
  const [draft, setDraft] = useState(initial);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startSaving] = useTransition();
  const canSave = Boolean(draft.name.trim()) && (!kinds || draft.kindId);

  const submit = () =>
    startSaving(async () => {
      const message = await onSubmit(draft);

      if (message) {
        setError(message);
        return;
      }

      onOpenChange(false);
    });

  return (
    <OverlayDialog
      open={open}
      onOpenChange={(next) => {
        if (!isSaving) onOpenChange(next);
      }}
      title={title}
      initialFocus
      form={{
        onSubmit: (event) => {
          event.preventDefault();

          if (canSave) submit();
        },
      }}
      footer={
        <>
          <Button
            type="button"
            variant="secondary"
            disabled={isSaving}
            onClick={() => onOpenChange(false)}
          >
            Cancel
          </Button>
          <Button
            type="submit"
            disabled={isSaving || !canSave}
            aria-busy={isSaving}
          >
            {isSaving ? <Spinner data-icon="inline-start" /> : null}
            {submitLabel}
          </Button>
        </>
      }
    >
      <div className="grid gap-5">
        <Field>
          <FieldLabel htmlFor={nameId}>{nameLabel}</FieldLabel>
          <Input
            id={nameId}
            autoFocus
            autoComplete="off"
            maxLength={maxLength}
            aria-invalid={error ? true : undefined}
            aria-describedby={error ? errorId : undefined}
            value={draft.name}
            onChange={(event) => {
              const name = event.currentTarget.value;

              setDraft((current) => ({ ...current, name }));
              setError(null);
            }}
          />
        </Field>
        {kinds ? (
          <Field>
            <FieldLabel htmlFor={kindId}>Kind</FieldLabel>
            <SelectControl
              id={kindId}
              ariaLabel="Kind"
              placeholder="Pick a kind"
              value={draft.kindId ? String(draft.kindId) : ""}
              onValueChange={(value) =>
                setDraft((current) => ({
                  ...current,
                  kindId: value ? Number(value) : null,
                }))
              }
              options={kinds.map((kind) => ({
                label: kind.name,
                value: String(kind.id),
              }))}
            />
          </Field>
        ) : null}
        {withDescription ? (
          <Field>
            <FieldLabel htmlFor={descriptionId}>
              What it asks (optional)
            </FieldLabel>
            <Textarea
              id={descriptionId}
              maxLength={ruleDescriptionMaxLength}
              placeholder="Such as: heal only with items between battles."
              value={draft.description ?? ""}
              onChange={(event) => {
                const description = event.currentTarget.value;

                setDraft((current) => ({ ...current, description }));
              }}
            />
          </Field>
        ) : null}
        {error ? <FieldError id={errorId}>{error}</FieldError> : null}
      </div>
    </OverlayDialog>
  );
};
