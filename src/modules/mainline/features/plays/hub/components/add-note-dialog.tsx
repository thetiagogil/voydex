"use client";

import { useId, useState, useTransition, type ComponentProps } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { FormOverlay } from "@/modules/mainline/shared/components/form-overlay";
import { addMainlinePlayNoteAction } from "@/modules/mainline/features/plays/hub/server/play-note-action";
import { playNoteMaxLength } from "@/modules/mainline/features/plays/hub/utils/play-note-text";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  Field,
  FieldDescription,
  FieldError,
  FieldLabel,
} from "@/shared/components/ui/field";
import { Spinner } from "@/shared/components/ui/spinner";
import { Textarea } from "@/shared/components/ui/textarea";

type AddNoteDialogProps = {
  className?: string;
  playId: string;
  size?: ComponentProps<typeof Button>["size"];
};

/*
 * "Add a note" (v3's History head and Overview's objective card): a quiet
 * secondary button that opens one field. The note joins History at once.
 */
export const AddNoteDialog = ({
  className,
  playId,
  size = "default",
}: AddNoteDialogProps) => {
  const router = useRouter();
  const fieldId = useId();
  const [open, setOpen] = useState(false);
  const [text, setText] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [isPending, startTransition] = useTransition();

  const changeOpen = (nextOpen: boolean) => {
    if (isPending) {
      return;
    }

    setOpen(nextOpen);

    if (!nextOpen) {
      setText("");
      setError(null);
    }
  };

  const save = () => {
    startTransition(async () => {
      const result = await addMainlinePlayNoteAction({ playId, text });

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      setOpen(false);
      setText("");
      setError(null);
      toast.success(result.message);
      router.refresh();
    });
  };

  return (
    <>
      <Button
        type="button"
        variant="outline"
        size={size}
        className={className}
        onClick={() => setOpen(true)}
      >
        <AppIcon icon={appIcons.actions.edit} inline="start" />
        Add a note
      </Button>
      <FormOverlay
        open={open}
        onOpenChange={changeOpen}
        title="Add a note"
        description="It joins this Play's History, dated today."
        footer={
          <>
            <Button
              type="button"
              variant="outline"
              disabled={isPending}
              onClick={() => changeOpen(false)}
            >
              Cancel
            </Button>
            <Button
              type="submit"
              form={`${fieldId}-form`}
              disabled={isPending || !text.trim()}
              aria-busy={isPending}
            >
              {isPending ? <Spinner data-icon="inline-start" /> : null}
              {isPending ? "Saving…" : "Save note"}
            </Button>
          </>
        }
      >
        <form
          id={`${fieldId}-form`}
          onSubmit={(event) => {
            event.preventDefault();
            save();
          }}
        >
          <Field data-invalid={error ? true : undefined}>
            <FieldLabel htmlFor={fieldId}>Note</FieldLabel>
            <Textarea
              id={fieldId}
              className="min-h-32"
              maxLength={playNoteMaxLength}
              value={text}
              aria-invalid={error ? true : undefined}
              onChange={(event) => {
                setText(event.target.value);
                setError(null);
              }}
              placeholder="What happened, or what to remember"
            />
            {error ? (
              <FieldError>{error}</FieldError>
            ) : (
              <FieldDescription>
                The first line is what History shows.
              </FieldDescription>
            )}
          </Field>
        </form>
      </FormOverlay>
    </>
  );
};
