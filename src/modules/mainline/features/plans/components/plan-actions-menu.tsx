"use client";

import { useRouter } from "next/navigation";
import { useId, useState, useTransition } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import { PlanFollowersList } from "@/modules/mainline/features/plans/components/plan-followers-list";
import { deletePlanAction } from "@/modules/mainline/features/plans/server/delete-plan-action";
import { readPlanFollowersAction } from "@/modules/mainline/features/plans/server/plan-followers-action";
import { setPlanArchivedAction } from "@/modules/mainline/features/plans/server/plan-archive-action";
import { renamePlanAction } from "@/modules/mainline/features/plans/server/plan-rename-action";
import type { PlanFollower } from "@/modules/mainline/features/plans/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  AlertDialog,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/shared/components/ui/alert-dialog";
import { Button } from "@/shared/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";

export type PlanActionsPlan = {
  id: string;
  isArchived: boolean;
  linkedPlayCount: number;
  name: string;
};

type PlanActionsMenuProps = {
  /*
   * Why Archive waits, such as unsaved changes in the Planner; Archive is
   * disabled while it's set.
   */
  archiveBlockedReason?: string;
  className?: string;
  /* Where the menu sits: a card's corner, or the Planner's button row. */
  placement: "card" | "planner";
  plan: PlanActionsPlan;
  /*
   * Rename in place, as the Planner's title does; without it Rename asks
   * for the name in a dialog (My Plans).
   */
  onRename?: () => void;
};

/*
 * One Plan's actions behind one button, grouped by what they do: See Plays
 * (the Plays that follow it, in a dialog) to look; Rename and Archive (or
 * Restore, for an archived Plan, which can't be renamed) to change it; and
 * Delete, which asks first and says what goes with it. Deleting from the
 * Planner goes back to My Plans.
 */
export const PlanActionsMenu = ({
  archiveBlockedReason,
  className,
  onRename,
  placement,
  plan,
}: PlanActionsMenuProps) => {
  const router = useRouter();
  const nameId = useId();
  const [isRenameOpen, setIsRenameOpen] = useState(false);
  const [draftName, setDraftName] = useState(plan.name);
  const [isDeleteOpen, setIsDeleteOpen] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [isWorking, startWorking] = useTransition();
  const [isPlaysOpen, setIsPlaysOpen] = useState(false);
  const [followers, setFollowers] = useState<PlanFollower[] | null>(null);
  const [isLoadingPlays, startLoadingPlays] = useTransition();

  const seePlays = () => {
    setError(null);
    setFollowers(null);
    setIsPlaysOpen(true);
    startLoadingPlays(async () => {
      const result = await readPlanFollowersAction(plan.id);

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      setFollowers(result.followers);
    });
  };

  const toggleArchived = () =>
    startWorking(async () => {
      const result = await setPlanArchivedAction(plan.id, !plan.isArchived);

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      toast.success(
        `${plan.name} ${plan.isArchived ? "restored" : "archived"}`,
      );
      router.refresh();
    });

  const rename = () =>
    startWorking(async () => {
      const result = await renamePlanAction(plan.id, draftName);

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      setIsRenameOpen(false);
      toast.success(`Renamed to ${result.name}`);
      router.refresh();
    });

  const deletePlan = () =>
    startWorking(async () => {
      const result = await deletePlanAction(plan.id);

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      setIsDeleteOpen(false);
      toast.success(`${plan.name} deleted`);

      if (placement === "planner") {
        router.push(appRoutes.mainlinePlans);
        return;
      }

      router.refresh();
    });

  return (
    <>
      <DropdownMenu>
        <DropdownMenuTrigger
          render={
            <Button
              type="button"
              variant={placement === "card" ? "ghost" : "secondary"}
              size={placement === "card" ? "icon-sm" : "icon"}
              aria-label={`${plan.name}: more actions`}
              disabled={isWorking}
              className={className}
            />
          }
        >
          {isWorking ? <Spinner /> : <AppIcon icon={appIcons.actions.more} />}
        </DropdownMenuTrigger>
        <DropdownMenuContent align="end" className="w-auto min-w-52">
          {plan.linkedPlayCount ? (
            <DropdownMenuItem onClick={seePlays}>
              <AppIcon icon={appIcons.views.mainline.plays} />
              See Plays
            </DropdownMenuItem>
          ) : null}
          {plan.linkedPlayCount ? <DropdownMenuSeparator /> : null}
          {plan.isArchived ? null : (
            <DropdownMenuItem
              onClick={() => {
                if (onRename) {
                  onRename();
                  return;
                }

                setDraftName(plan.name);
                setError(null);
                setIsRenameOpen(true);
              }}
            >
              <AppIcon icon={appIcons.actions.edit} />
              Rename
            </DropdownMenuItem>
          )}
          <DropdownMenuItem
            disabled={Boolean(archiveBlockedReason) && !plan.isArchived}
            title={plan.isArchived ? undefined : archiveBlockedReason}
            onClick={toggleArchived}
          >
            <AppIcon
              icon={
                plan.isArchived
                  ? appIcons.actions.restore
                  : appIcons.product.archived
              }
            />
            {plan.isArchived ? "Restore" : "Archive"}
          </DropdownMenuItem>
          <DropdownMenuSeparator />
          <DropdownMenuItem
            variant="destructive"
            onClick={() => {
              setError(null);
              setIsDeleteOpen(true);
            }}
          >
            <AppIcon icon={appIcons.actions.clear} />
            Delete
          </DropdownMenuItem>
        </DropdownMenuContent>
      </DropdownMenu>

      <Dialog
        open={isRenameOpen}
        onOpenChange={(open) => {
          if (!isWorking) setIsRenameOpen(open);
        }}
      >
        <DialogContent className="sm:max-w-md">
          <form
            className="grid gap-5"
            onSubmit={(event) => {
              event.preventDefault();
              rename();
            }}
          >
            <DialogHeader>
              <DialogTitle>Rename Plan</DialogTitle>
            </DialogHeader>
            <Field>
              <FieldLabel htmlFor={nameId}>Plan name</FieldLabel>
              <Input
                id={nameId}
                autoFocus
                autoComplete="off"
                maxLength={200}
                value={draftName}
                onChange={(event) => setDraftName(event.currentTarget.value)}
              />
            </Field>
            {error ? (
              <p role="alert" className="text-danger text-13 font-bold">
                {error}
              </p>
            ) : null}
            <DialogFooter>
              <Button
                type="button"
                variant="secondary"
                disabled={isWorking}
                onClick={() => setIsRenameOpen(false)}
              >
                Cancel
              </Button>
              <Button
                type="submit"
                disabled={isWorking || !draftName.trim()}
                aria-busy={isWorking}
              >
                {isWorking ? <Spinner data-icon="inline-start" /> : null}
                Rename
              </Button>
            </DialogFooter>
          </form>
        </DialogContent>
      </Dialog>

      <Dialog open={isPlaysOpen} onOpenChange={setIsPlaysOpen}>
        <DialogContent className="sm:max-w-lg">
          <DialogHeader>
            <DialogTitle>Plays following this Plan</DialogTitle>
            <DialogDescription>
              Each Play&apos;s team now. Open one to go to it.
            </DialogDescription>
          </DialogHeader>
          {isLoadingPlays ? (
            <p
              role="status"
              className="text-ink-2 text-14 flex items-center gap-2 font-semibold"
            >
              <Spinner />
              Loading the Plays
            </p>
          ) : error ? (
            <p role="alert" className="text-danger text-13 font-bold">
              {error}
            </p>
          ) : followers?.length ? (
            <PlanFollowersList followers={followers} />
          ) : (
            <p className="text-ink-2 text-14">No Play follows this Plan yet.</p>
          )}
        </DialogContent>
      </Dialog>

      <AlertDialog
        open={isDeleteOpen}
        onOpenChange={(open) => {
          if (!isWorking) setIsDeleteOpen(open);
        }}
      >
        <AlertDialogContent>
          <AlertDialogHeader>
            <AlertDialogTitle>Delete {plan.name}?</AlertDialogTitle>
            <AlertDialogDescription>
              Its Pokémon and their builds go with it.
              {plan.linkedPlayCount
                ? ` The ${plan.linkedPlayCount === 1 ? "Play that follows it stops" : `${plan.linkedPlayCount} Plays that follow it stop`} comparing against it.`
                : ""}{" "}
              This can&apos;t be undone.
            </AlertDialogDescription>
          </AlertDialogHeader>
          {error ? (
            <p role="alert" className="text-danger text-13 font-bold">
              {error}
            </p>
          ) : null}
          <AlertDialogFooter>
            <AlertDialogCancel disabled={isWorking}>Keep it</AlertDialogCancel>
            <Button
              type="button"
              variant="destructive"
              disabled={isWorking}
              aria-busy={isWorking}
              onClick={deletePlan}
            >
              {isWorking ? <Spinner data-icon="inline-start" /> : null}
              Delete Plan
            </Button>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>
    </>
  );
};
