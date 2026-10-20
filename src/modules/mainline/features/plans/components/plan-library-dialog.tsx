"use client";

import { useEffect, useState, useTransition } from "react";
import { toast } from "sonner";

import {
  createPlanLibraryChoiceAction,
  readPlanLibraryAction,
  setPlanLibraryLinkAction,
  type PlanLibrary,
} from "@/modules/mainline/features/plans/server/plan-library-action";
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
import { FieldError } from "@/shared/components/ui/field";
import { Spinner } from "@/shared/components/ui/spinner";

type Noun = "rule" | "tag";

const sections = [
  { addLabel: "Add rule", label: "Challenge rules", noun: "rule" },
  { addLabel: "Add tag", label: "Tags", noun: "tag" },
] as const;

/*
 * A Plan's challenge rules and tags, from its "⋯": the ones it keeps as
 * chips and "+ Add" to pick more from your Library or make one. Each change
 * is saved as it's made, so the dialog closes with Done.
 */
export const PlanLibraryDialog = ({
  onOpenChange,
  open,
  planId,
  planName,
}: {
  onOpenChange: (open: boolean) => void;
  open: boolean;
  planId: string;
  planName: string;
}) => {
  const [library, setLibrary] = useState<PlanLibrary | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [isLoading, startLoading] = useTransition();
  const [isSaving, startSaving] = useTransition();

  /* Reads afresh each time it opens; closing clears what it read. */
  useEffect(() => {
    if (!open) return;

    startLoading(async () => {
      const result = await readPlanLibraryAction(planId);

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      setLibrary(result.library);
    });
  }, [open, planId]);

  const idsKey = (noun: Noun) => (noun === "rule" ? "ruleIds" : "tagIds");

  /* Saves the one chip added or taken off; puts it back if that fails. */
  const change = (noun: Noun, ids: string[]) => {
    if (!library) return;

    const key = idsKey(noun);
    const before = library[key];
    const added = ids.find((id) => !before.includes(id));
    const removed = before.find((id) => !ids.includes(id));
    const choiceId = added ?? removed;

    if (!choiceId) return;

    setLibrary({ ...library, [key]: ids });
    startSaving(async () => {
      const result = await setPlanLibraryLinkAction({
        choiceId,
        linked: Boolean(added),
        noun,
        planId,
      });

      if (result.status === "error") {
        toast.error(result.message);
        setLibrary((current) =>
          current ? { ...current, [key]: before } : current,
        );
      }
    });
  };

  return (
    <Dialog
      open={open}
      onOpenChange={(next) => {
        if (!next) {
          setLibrary(null);
          setError(null);
        }

        onOpenChange(next);
      }}
    >
      <DialogContent className="sm:max-w-lg">
        <DialogHeader>
          <DialogTitle>Rules and tags</DialogTitle>
          <DialogDescription>
            For {planName}. Changes save as you make them.
          </DialogDescription>
        </DialogHeader>
        {isLoading || (!library && !error) ? (
          <p
            role="status"
            className="text-ink-2 text-14 flex items-center gap-2 font-semibold"
          >
            <Spinner />
            Loading the rules and tags
          </p>
        ) : error ? (
          <FieldError>{error}</FieldError>
        ) : library ? (
          <div className="grid gap-5">
            {sections.map((section) => (
              <section key={section.noun} className="grid gap-2.5">
                <h3 className="text-ink-2 text-14 font-sans font-extrabold tracking-normal">
                  {section.label}
                </h3>
                <LibraryChoiceField
                  label={section.label}
                  noun={section.noun}
                  addLabel={section.addLabel}
                  choices={
                    section.noun === "rule" ? library.rules : library.tags
                  }
                  selectedIds={library[idsKey(section.noun)]}
                  onChange={(ids) => change(section.noun, ids)}
                  onCreate={(name) =>
                    createPlanLibraryChoiceAction({ name, noun: section.noun })
                  }
                />
              </section>
            ))}
          </div>
        ) : null}
        <DialogFooter>
          <Button
            type="button"
            variant="secondary"
            disabled={isSaving}
            aria-busy={isSaving}
            onClick={() => {
              setLibrary(null);
              setError(null);
              onOpenChange(false);
            }}
          >
            {isSaving ? <Spinner data-icon="inline-start" /> : null}
            Done
          </Button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  );
};
