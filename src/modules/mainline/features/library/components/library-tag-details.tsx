"use client";

import { useId, useState, useTransition } from "react";

import { LibraryUsedIn } from "@/modules/mainline/features/library/components/library-used-in";
import type { LibraryTag } from "@/modules/mainline/features/library/types";
import { FormOverlay } from "@/modules/mainline/shared/components/form-overlay";
import { libraryNameMaxLength } from "@/modules/mainline/shared/utils/library-names";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Field, FieldError, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";

/*
 * A tag in full, opened from its pill: its name open to change, the Plays
 * that wear it, Save and Delete. The same view as a rule of yours.
 */
export const LibraryTagDetails = ({
  onDelete,
  onOpenChange,
  onSave,
  open,
  tag,
}: {
  onDelete: () => void;
  onOpenChange: (open: boolean) => void;
  /* Saves the new name; a message keeps it open and shows it. */
  onSave: (name: string) => Promise<string | null>;
  open: boolean;
  tag: LibraryTag;
}) => {
  const id = useId();
  const [name, setName] = useState(tag.name);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startSaving] = useTransition();
  const canSave = name !== tag.name && Boolean(name.trim());

  return (
    <FormOverlay
      open={open}
      onOpenChange={(next) => {
        if (!isSaving) onOpenChange(next);
      }}
      kicker="Tag · Made by you"
      title={tag.name}
      footer={
        <>
          <Button
            type="button"
            variant="destructive"
            disabled={isSaving}
            onClick={onDelete}
          >
            <AppIcon icon={appIcons.actions.delete} inline="start" />
            Delete
          </Button>
          <Button
            type="submit"
            form={`${id}-form`}
            disabled={isSaving || !canSave}
            aria-busy={isSaving}
          >
            {isSaving ? <Spinner data-icon="inline-start" /> : null}
            Save
          </Button>
        </>
      }
    >
      <div className="grid gap-5">
        <form
          id={`${id}-form`}
          onSubmit={(event) => {
            event.preventDefault();

            if (!canSave) return;

            startSaving(async () => {
              const message = await onSave(name);

              if (message) setError(message);
            });
          }}
        >
          <Field>
            <FieldLabel htmlFor={`${id}-name`}>Tag name</FieldLabel>
            <Input
              id={`${id}-name`}
              autoComplete="off"
              maxLength={libraryNameMaxLength.tag}
              value={name}
              onChange={(event) => {
                setName(event.currentTarget.value);
                setError(null);
              }}
            />
          </Field>
          {error ? <FieldError className="mt-3">{error}</FieldError> : null}
        </form>
        <LibraryUsedIn plays={tag.plays} />
      </div>
    </FormOverlay>
  );
};
