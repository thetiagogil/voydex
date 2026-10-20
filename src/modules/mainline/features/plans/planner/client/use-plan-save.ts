"use client";

import { useRouter } from "next/navigation";
import { useState, useTransition } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import { clearPlanDraft } from "@/modules/mainline/features/plans/planner/client/use-plan-draft";
import { savePlanAction } from "@/modules/mainline/features/plans/planner/server/save-plan-action";
import { untitledPlanName } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import type { PlanMember } from "@/modules/mainline/features/plans/types";

type PlanContents = {
  expansions: number[];
  members: PlanMember[];
  name: string;
  versionGroupSlug: string;
};

/* What Save changes: the team and its game. The name and rules change in
 * the Plan's details, which save on their own. */
const toSnapshot = ({ expansions, members, versionGroupSlug }: PlanContents) =>
  JSON.stringify({
    expansions: expansions.toSorted(),
    members,
    versionGroupSlug,
  });

/*
 * Saving a Plan from the Planner: a new Plan asks for its details first
 * (`isDetailsOpen`: its name and rules) and opens at its own address once
 * saved; Save changes only wakes up for a change to the team, including
 * opening the Plan in another version group.
 */
export const usePlanSave = ({
  contents,
  planId,
  savedContents,
  trainerId,
}: {
  contents: PlanContents;
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
   * Saves the team under a name; a new Plan also takes its rules. Resolves
   * with a message when it fails (the details dialog shows it), else null.
   */
  const saveAs = ({
    name: planName,
    ruleIds,
  }: {
    name: string;
    ruleIds?: string[];
  }) =>
    new Promise<string | null>((resolve) =>
      startSaving(async () => {
        const result = await savePlanAction({
          challengeRuleIds: ruleIds,
          expansionVersionGroupIds: contents.expansions,
          members: contents.members,
          name: planName,
          planId,
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
          router.replace(appRoutes.mainlinePlan(result.planId));
          resolve(null);
          return;
        }

        setSavedSnapshot(toSnapshot(contents));
        toast.success(`${savedName} saved`);
        router.refresh();
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
