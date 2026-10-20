"use client";

import { useId, useState, useTransition } from "react";

import { Button } from "@/shared/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import { Field, FieldError, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";

/*
 * A Plan's name, in one dialog: Save Plan asks for it on a new Plan, and
 * Rename changes it on a saved one. Nothing changes until its button.
 */
export const PlanNameDialog = ({
  description,
  initialName,
  onOpenChange,
  onSubmit,
  open,
  submitLabel,
  title,
}: {
  description?: string;
  initialName: string;
  onOpenChange: (open: boolean) => void;
  /* Saves the name; a message keeps the dialog open and shows it. */
  onSubmit: (name: string) => Promise<string | null>;
  open: boolean;
  submitLabel: string;
  title: string;
}) => {
  const nameId = useId();
  const [name, setName] = useState(initialName);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startSaving] = useTransition();

  const submit = () =>
    startSaving(async () => {
      const message = await onSubmit(name.trim());

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
        if (isSaving) return;

        setError(null);
        onOpenChange(next);
      }}
    >
      <DialogContent className="sm:max-w-md">
        <form
          className="grid gap-5"
          onSubmit={(event) => {
            event.preventDefault();

            if (name.trim()) submit();
          }}
        >
          <DialogHeader>
            <DialogTitle>{title}</DialogTitle>
            {description ? (
              <DialogDescription>{description}</DialogDescription>
            ) : null}
          </DialogHeader>
          <Field>
            <FieldLabel htmlFor={nameId}>Plan name</FieldLabel>
            <Input
              id={nameId}
              autoFocus
              autoComplete="off"
              maxLength={200}
              placeholder="For example, Mono Water team"
              value={name}
              onChange={(event) => {
                setName(event.currentTarget.value);
                setError(null);
              }}
            />
          </Field>
          {error ? <FieldError>{error}</FieldError> : null}
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
              disabled={isSaving || !name.trim()}
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
