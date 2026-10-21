"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useState, useTransition } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import {
  PlayTeamsDialog,
  usePlayTeamsDialog,
} from "@/modules/mainline/shared/components/play-teams-dialog";
import { PlanNameDialog } from "@/modules/mainline/features/plans/components/plan-name-dialog";
import { deletePlanAction } from "@/modules/mainline/features/plans/server/delete-plan-action";
import { readPlanFollowersAction } from "@/modules/mainline/features/plans/server/plan-followers-action";
import { setPlanArchivedAction } from "@/modules/mainline/features/plans/server/plan-archive-action";
import { renamePlanAction } from "@/modules/mainline/features/plans/server/plan-rename-action";
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
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
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
   * Renames where the caller keeps the name (the Planner, whose title opens
   * it too); without it Rename opens its own dialog.
   */
  onRename?: () => void;
  /* Share, in the Planner: a link to the team, beside See Plays. */
  onShare?: () => void;
};

/*
 * One Plan's actions behind one button, grouped by what they do: New Plan
 * (in the Planner), See Plays and Share to go and look; Rename and Archive (or Restore, for an archived Plan, which
 * can't be changed) to change it; and Delete, which asks first and says
 * what goes with it. Deleting from the Planner goes back to My Plans.
 */
export const PlanActionsMenu = ({
  archiveBlockedReason,
  className,
  onRename,
  onShare,
  placement,
  plan,
}: PlanActionsMenuProps) => {
  const router = useRouter();
  const [isRenameOpen, setIsRenameOpen] = useState(false);
  const [isDeleteOpen, setIsDeleteOpen] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [isWorking, startWorking] = useTransition();
  const plays = usePlayTeamsDialog(() => readPlanFollowersAction(plan.id));

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
          {placement === "planner" ? (
            <DropdownMenuItem
              render={<Link href={appRoutes.mainlinePlanNew()} />}
            >
              <AppIcon icon={appIcons.actions.create} />
              New Plan
            </DropdownMenuItem>
          ) : null}
          {plan.linkedPlayCount ? (
            <DropdownMenuItem onClick={plays.show}>
              <AppIcon icon={appIcons.views.mainline.plays} />
              See Plays
            </DropdownMenuItem>
          ) : null}
          {onShare ? (
            <DropdownMenuItem onClick={onShare}>
              <AppIcon icon={appIcons.actions.share} />
              Share
            </DropdownMenuItem>
          ) : null}
          {plan.linkedPlayCount || onShare || placement === "planner" ? (
            <DropdownMenuSeparator />
          ) : null}
          {plan.isArchived ? null : (
            <DropdownMenuItem
              onClick={() => (onRename ? onRename() : setIsRenameOpen(true))}
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

      {isRenameOpen ? (
        <PlanNameDialog
          open
          onOpenChange={setIsRenameOpen}
          initialName={plan.name}
          title="Rename Plan"
          submitLabel="Rename"
          onSubmit={async (name) => {
            const result = await renamePlanAction(plan.id, name);

            if (result.status === "error") return result.message;

            toast.success(`Renamed to ${result.name}`);
            router.refresh();

            return null;
          }}
        />
      ) : null}

      <PlayTeamsDialog
        dialog={plays.dialog}
        title="Plays following this Plan"
        description="Each Play's team now. Open one to go to it."
        empty="No Play follows this Plan yet."
      />

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
