"use client";

import { useRouter } from "next/navigation";
import { useState, useTransition } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import { clearPlanDraft } from "@/modules/mainline/features/plans/planner/client/use-plan-draft";
import { savePlanAction } from "@/modules/mainline/features/plans/planner/client/save-plan-action";
import { untitledPlanName } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import type { PlanMember } from "@/modules/mainline/features/plans/types";

type PlanContents = {
  expansions: number[];
  members: PlanMember[];
  name: string;
  /* The version, by its game's slug; null for either. */
  versionGameSlug: string | null;
  versionGroupSlug: string;
};

/* What Save changes: the team, its game and version. The name changes on its
 * own, through Rename. */
const toSnapshot = ({
  expansions,
  members,
  versionGameSlug,
  versionGroupSlug,
}: PlanContents) =>
  JSON.stringify({
    expansions: expansions.toSorted(),
    members,
    versionGameSlug,
    versionGroupSlug,
  });

/*
 * Saving a Plan from the Planner: a new Plan asks for its name first
 * (`isDetailsOpen`) and opens at its own address once
 * saved; Save changes only wakes up for a change to the team, including
 * opening the Plan in another version group.
 */
export const usePlanSave = ({
  contents,
  embedded = false,
  planId,
  savedContents,
  trainerId,
}: {
  contents: PlanContents;
  /* A page hosts the Planner: the saved Plan opens as a step forward, so Back returns. */
  embedded?: boolean;
  /* Null for a new Plan. */
  planId: string | null;
  /* What was last saved; null for a new Plan. */
  savedContents: PlanContents | null;
  trainerId: string;
}) => {
  const router = useRouter();
  const [isSaving, startSaving] = useTransition();
  const [isDetailsOpen, setIsDetailsOpen] = useState(false);
  const [savedSnapshot, setSavedSnapshot] = useState(() =>
    savedContents ? toSnapshot(savedContents) : null,
  );
  const isDirty =
    savedSnapshot === null || savedSnapshot !== toSnapshot(contents);

  /*
   * Saves the team under a name. Resolves with a message when it fails (the
   * name dialog shows it), else null.
   */
  const saveAs = ({ name: planName }: { name: string }) =>
    new Promise<string | null>((resolve) =>
      startSaving(async () => {
        const result = await savePlanAction({
          expansionVersionGroupIds: contents.expansions,
          members: contents.members,
          name: planName,
          planId,
          versionGameSlug: contents.versionGameSlug,
          versionGroupSlug: contents.versionGroupSlug,
        });

        if (result.status === "error") {
          toast.error(result.message);
          resolve(result.message);
          return;
        }

        const savedName = planName.trim() || untitledPlanName;

        if (result.created) {
          clearPlanDraft(trainerId);
          toast.success(`${savedName} saved to My Plans`);
          (embedded ? router.push : router.replace)(
            appRoutes.mainlinePlan(result.planId),
          );
          resolve(null);
          return;
        }

        setSavedSnapshot(toSnapshot(contents));
        toast.success(`${savedName} saved`);
        resolve(null);
      }),
    );

  const save = () => {
    if (!planId) {
      setIsDetailsOpen(true);
      return;
    }

    void saveAs({ name: contents.name });
  };

  return { isDetailsOpen, isDirty, isSaving, save, saveAs, setIsDetailsOpen };
};
