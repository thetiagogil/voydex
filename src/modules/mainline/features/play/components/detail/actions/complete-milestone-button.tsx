"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { CheckCircle2 } from "lucide-react";

import { completeMainlinePlayMilestone } from "@/modules/mainline/features/play/server/progress-actions";
import { ActionError } from "@/modules/mainline/features/play/components/detail/actions/action-error";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type CompleteMilestoneButtonProps = {
  disabled?: boolean;
  label?: string;
  milestoneId: number | null;
  playId: string;
};

export const CompleteMilestoneButton = ({
  disabled = false,
  label = "Mark complete",
  milestoneId,
  playId,
}: CompleteMilestoneButtonProps) => {
  const [error, setError] = useState<string | null>(null);
  const [isPending, startTransition] = useTransition();
  const router = useRouter();

  return (
    <div className="flex flex-col gap-2">
      <Button
        type="button"
        disabled={disabled || isPending || !milestoneId}
        onClick={() => {
          if (!milestoneId) {
            return;
          }

          setError(null);
          startTransition(async () => {
            const result = await completeMainlinePlayMilestone({
              milestoneId,
              playId,
            });

            if (!result.ok) {
              setError(result.error);
              return;
            }

            router.refresh();
          });
        }}
      >
        {isPending ? (
          <Spinner data-icon="inline-start" />
        ) : (
          <CheckCircle2 data-icon="inline-start" />
        )}
        {isPending ? "Updating..." : label}
      </Button>
      <ActionError error={error} />
    </div>
  );
};
