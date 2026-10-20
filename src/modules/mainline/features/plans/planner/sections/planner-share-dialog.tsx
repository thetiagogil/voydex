"use client";

import { useId, useState } from "react";
import { toast } from "sonner";

import {
  decodePlanShare,
  type PlanShare,
} from "@/modules/mainline/features/plans/planner/utils/plan-share-code";
import { Button } from "@/shared/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import { Input } from "@/shared/components/ui/input";
import { FieldError, FieldLabel } from "@/shared/components/ui/field";

type PlannerShareDialogProps = {
  link: string;
  onImport: (share: PlanShare) => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
};

/* Copy link and Import share one width, so the two rows line up. */
const actionWidth = "w-32 shrink-0";

/*
 * v3's Share or import a Plan: the link carries the six Pokémon in its
 * hash, so it never changes a saved Plan; importing one opens it as a new,
 * unsaved Plan.
 */
export const PlannerShareDialog = ({
  link,
  onImport,
  onOpenChange,
  open,
}: PlannerShareDialogProps) => {
  const [pasted, setPasted] = useState("");
  const [error, setError] = useState<string | null>(null);
  const exportId = useId();
  const importId = useId();
  const errorId = useId();

  const copy = async () => {
    try {
      await navigator.clipboard.writeText(link);
      toast.success("Link copied");
    } catch {
      toast.error(
        "Your browser didn't allow copying. Select the link instead.",
      );
    }
  };

  const importPlan = () => {
    const share = decodePlanShare(pasted);

    if (!share) {
      setError("That isn't a Voydex Plan link.");
      return;
    }

    setError(null);
    setPasted("");
    onImport(share);
  };

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="sm:max-w-lg">
        <DialogHeader>
          <DialogTitle>Share or import a Plan</DialogTitle>
          <DialogDescription>
            A link carries the six Pokémon. It never changes the Plan
            you&apos;ve saved.
          </DialogDescription>
        </DialogHeader>
        <div className="flex flex-col gap-2">
          <FieldLabel htmlFor={exportId}>Export</FieldLabel>
          <div className="flex gap-2">
            <Input
              id={exportId}
              readOnly
              value={link}
              onFocus={(event) => event.currentTarget.select()}
              className="text-14 min-w-0 flex-1 font-mono"
            />
            <Button
              type="button"
              variant="secondary"
              onClick={copy}
              className={actionWidth}
            >
              Copy link
            </Button>
          </div>
        </div>
        <form
          className="flex flex-col gap-2"
          onSubmit={(event) => {
            event.preventDefault();
            importPlan();
          }}
        >
          <FieldLabel htmlFor={importId}>Import</FieldLabel>
          <div className="flex gap-2">
            <Input
              id={importId}
              value={pasted}
              placeholder="Paste a Voydex Plan link"
              aria-invalid={error ? true : undefined}
              aria-describedby={error ? errorId : undefined}
              onChange={(event) => setPasted(event.currentTarget.value)}
              className="min-w-0 flex-1"
            />
            <Button
              type="submit"
              variant="secondary"
              disabled={!pasted.trim()}
              className={actionWidth}
            >
              Import
            </Button>
          </div>
          {error ? (
            <FieldError id={errorId}>{error}</FieldError>
          ) : (
            <p className="text-ink-3 text-13 font-semibold">
              Importing opens it as a new, unsaved Plan. Nothing you&apos;ve
              saved is replaced.
            </p>
          )}
        </form>
      </DialogContent>
    </Dialog>
  );
};
