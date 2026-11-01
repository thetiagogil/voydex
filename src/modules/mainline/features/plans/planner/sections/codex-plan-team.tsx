"use client";

import { useState, useTransition } from "react";
import { toast } from "sonner";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

import { MainlinePlannerPage } from "../mainline-planner-page";
import { openPlannerAction } from "../server/planner-open-action";
import type { PlannerPageData } from "@/modules/mainline/features/plans/types";

type CodexPlanTeamProps = {
  /* The game the new Plan starts on. */
  versionGroupSlug: string;
};

/*
 * A game page's "Plan a team" (Mainline's piece, injected through the Codex's
 * slots): the Team Planner opens over the page on this game, blank, and
 * leaving the Codex happens only when the Plan is saved. Closing it, with
 * the corner button, Escape or a tap outside, leaves you where you were.
 */
export const CodexPlanTeam = ({ versionGroupSlug }: CodexPlanTeamProps) => {
  const [data, setData] = useState<PlannerPageData | null>(null);
  const [isOpen, setIsOpen] = useState(false);
  const [isOpening, startOpening] = useTransition();

  /* Reads the Planner of a game; null when it can't be read (a toast says why). */
  const read = async (slug: string) => {
    const result = await openPlannerAction({ versionGroupSlug: slug });

    if (result.status === "error") {
      toast.error(result.message);
      return null;
    }

    return result.data;
  };

  const open = () =>
    startOpening(async () => {
      const opened = await read(versionGroupSlug);

      if (opened) {
        setData(opened);
        setIsOpen(true);
      }
    });

  return (
    <>
      <Button
        type="button"
        size="sm"
        variant="secondary"
        aria-haspopup="dialog"
        aria-busy={isOpening}
        disabled={isOpening}
        onClick={open}
      >
        {isOpening ? (
          <Spinner data-icon="inline-start" />
        ) : (
          <AppIcon icon={appIcons.product.team} inline="start" />
        )}
        Plan a team
      </Button>
      <OverlayDialog
        open={isOpen}
        onOpenChange={setIsOpen}
        title="Plan a team"
        fullScreenOnPhone
        size="full"
      >
        {data ? (
          <MainlinePlannerPage
            data={data}
            embedding={{
              onSwitchVersionGroup: async (slug) => {
                const next = await read(slug);

                if (next) setData(next);
              },
            }}
          />
        ) : null}
      </OverlayDialog>
    </>
  );
};
