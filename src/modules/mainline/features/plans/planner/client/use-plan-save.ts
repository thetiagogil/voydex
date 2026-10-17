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

const toSnapshot = ({
  expansions,
  members,
  name,
  versionGroupSlug,
}: PlanContents) =>
  JSON.stringify({
    expansions: expansions.toSorted(),
    members,
    name,
    versionGroupSlug,
  });

/*
 * Saving a Plan from the Planner: a Plan without a name asks for one first
 * (`isNameOpen`), a new Plan opens at its own address once saved, and Save
 * changes only wakes up for a change, including opening the Plan in another
 * version group.
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
  const [isNameOpen, setIsNameOpen] = useState(false);
  const [savedSnapshot, setSavedSnapshot] = useState(() =>
    savedContents ? toSnapshot(savedContents) : null,
  );
  const isDirty =
    savedSnapshot === null || savedSnapshot !== toSnapshot(contents);

  const saveAs = (planName: string) => {
    startSaving(async () => {
      const result = await savePlanAction({
        expansionVersionGroupIds: contents.expansions,
        members: contents.members,
        name: planName,
        planId,
        versionGroupSlug: contents.versionGroupSlug,
      });

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      const savedName = planName.trim() || untitledPlanName;

      if (result.created) {
        clearPlanDraft(trainerId);
        toast.success(`${savedName} saved to My Plans`);
        router.replace(appRoutes.mainlinePlan(result.planId));
        return;
      }

      setSavedSnapshot(toSnapshot({ ...contents, name: planName }));
      toast.success(`${savedName} saved`);
      router.refresh();
    });
  };

  const save = () => {
    if (!contents.name.trim()) {
      setIsNameOpen(true);
      return;
    }

    saveAs(contents.name);
  };

  return { isDirty, isNameOpen, isSaving, save, saveAs, setIsNameOpen };
};
