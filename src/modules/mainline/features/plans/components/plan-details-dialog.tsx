"use client";

import { useEffect, useId, useState, useTransition } from "react";

import {
  createPlanRuleAction,
  readPlanDetailsAction,
  type PlanDetails,
} from "@/modules/mainline/features/plans/server/plan-details-action";
import { LibraryChoiceField } from "@/modules/mainline/shared/components/library-choice-field";
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

export type PlanDetailsDraft = { name: string; ruleIds: string[] };

/*
 * A Plan's details, its name and challenge rules, in one dialog: Save Plan
 * asks for them on a new Plan and Edit details changes them on a saved one.
 * Nothing changes until Save. The rules are a snapshot a Play copies when it
 * starts following the Plan, so changing them here never touches a Play.
 */
export const PlanDetailsDialog = ({
  description,
  onOpenChange,
  onSubmit,
  open,
  planId,
  submitLabel,
  title,
}: {
  description?: string;
  onOpenChange: (open: boolean) => void;
  /* Saves the draft; a message keeps the dialog open and shows it. */
  onSubmit: (draft: PlanDetailsDraft) => Promise<string | null>;
  open: boolean;
  /* The saved Plan whose details to start from; null for a new Plan. */
  planId: string | null;
  submitLabel: string;
  title: string;
}) => {
  const nameId = useId();
  const [details, setDetails] = useState<PlanDetails | null>(null);
  const [draft, setDraft] = useState<PlanDetailsDraft>({
    name: "",
    ruleIds: [],
  });
  const [error, setError] = useState<string | null>(null);
  const [isLoading, startLoading] = useTransition();
  const [isSaving, startSaving] = useTransition();

  /* Reads afresh each time it opens; closing clears what it read. */
  useEffect(() => {
    if (!open) return;

    startLoading(async () => {
      const result = await readPlanDetailsAction(planId);

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      setDetails(result.details);
      setDraft({ name: result.details.name, ruleIds: result.details.ruleIds });
    });
  }, [open, planId]);

  const close = () => {
    setDetails(null);
    setError(null);
    onOpenChange(false);
  };

  const submit = () =>
    startSaving(async () => {
      const message = await onSubmit({
        name: draft.name.trim(),
        ruleIds: draft.ruleIds,
      });

      if (message) {
        setError(message);
        return;
      }

      close();
    });

  return (
    <Dialog
      open={open}
      onOpenChange={(next) => {
        if (isSaving) return;
        if (next) onOpenChange(true);
        else close();
      }}
    >
      <DialogContent className="sm:max-w-lg">
        <form
          className="grid gap-5"
          onSubmit={(event) => {
            event.preventDefault();

            if (draft.name.trim() && details) submit();
          }}
        >
          <DialogHeader>
            <DialogTitle>{title}</DialogTitle>
            {description ? (
              <DialogDescription>{description}</DialogDescription>
            ) : null}
          </DialogHeader>
          {isLoading || (!details && !error) ? (
            <p
              role="status"
              className="text-ink-2 text-14 flex items-center gap-2 font-semibold"
            >
              <Spinner />
              Loading the Plan&apos;s details
            </p>
          ) : details ? (
            <>
              <Field>
                <FieldLabel htmlFor={nameId}>Plan name</FieldLabel>
                <Input
                  id={nameId}
                  autoFocus
                  autoComplete="off"
                  maxLength={200}
                  placeholder="For example, Mono Water run"
                  value={draft.name}
                  onChange={(event) => {
                    const name = event.currentTarget.value;

                    setDraft((current) => ({ ...current, name }));
                    setError(null);
                  }}
                />
              </Field>
              <div className="grid gap-2.5">
                <p className="text-ink-2 text-14 font-extrabold">
                  Challenge rules
                  <span className="text-ink-3 font-semibold">
                    {" "}
                    · optional, copied to a Play that follows it
                  </span>
                </p>
                <LibraryChoiceField
                  label="Challenge rules"
                  noun="rule"
                  addLabel="Add rule"
                  choices={details.rules}
                  selectedIds={draft.ruleIds}
                  disabled={isSaving}
                  onCreate={createPlanRuleAction}
                  onChange={(ruleIds) =>
                    setDraft((current) => ({ ...current, ruleIds }))
                  }
                />
              </div>
            </>
          ) : null}
          {error ? <FieldError>{error}</FieldError> : null}
          <DialogFooter>
            <Button
              type="button"
              variant="secondary"
              disabled={isSaving}
              onClick={close}
            >
              Cancel
            </Button>
            <Button
              type="submit"
              disabled={isSaving || !details || !draft.name.trim()}
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
