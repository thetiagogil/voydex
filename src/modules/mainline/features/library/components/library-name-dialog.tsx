"use client";

import { useId, useState, useTransition } from "react";

import type { LibraryRuleKind } from "@/modules/mainline/features/library/types";
import { SelectControl } from "@/shared/components/select-control";
import { Button } from "@/shared/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import { Field, FieldError, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";

export type LibraryNameDraft = { kindId: number | null; name: string };

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
};

/*
 * Making or renaming a rule or tag: its name, and a rule's kind. Enter
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
}: LibraryNameDialogProps) => {
  const nameId = useId();
  const kindId = useId();
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
    <Dialog
      open={open}
      onOpenChange={(next) => {
        if (!isSaving) onOpenChange(next);
      }}
    >
      <DialogContent className="sm:max-w-md">
        <form
          className="grid gap-5"
          onSubmit={(event) => {
            event.preventDefault();

            if (canSave) submit();
          }}
        >
          <DialogHeader>
            <DialogTitle>{title}</DialogTitle>
          </DialogHeader>
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
          {error ? <FieldError id={errorId}>{error}</FieldError> : null}
          <DialogFooter>
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
          </DialogFooter>
        </form>
      </DialogContent>
    </Dialog>
  );
};
