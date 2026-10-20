import type { PlanDraft } from "@/modules/mainline/features/plans/planner/client/use-plan-draft";
import { untitledPlanName } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import { TeamStrip } from "@/modules/mainline/shared/components/team-strip";
import { OfferCard } from "@/shared/components/offer-card";
import { Button } from "@/shared/components/ui/button";

/* "Continue your unsaved Plan?": the draft kept in this browser, offered once. */
export const PlannerDraftOfferSection = ({
  draft,
  onContinue,
  onStartFresh,
}: {
  draft: PlanDraft;
  onContinue: () => void;
  onStartFresh: () => void;
}) => (
  <OfferCard
    aria-label="Unsaved Plan"
    aside={
      draft.preview.length ? (
        <TeamStrip
          members={draft.preview}
          className="w-full max-w-64 sm:w-64"
        />
      ) : null
    }
    actions={
      <>
        <Button type="button" variant="secondary" onClick={onStartFresh}>
          Start fresh
        </Button>
        <Button type="button" onClick={onContinue}>
          Continue
        </Button>
      </>
    }
  >
    <p className="text-ink-3 text-13 font-extrabold">
      Continue your unsaved Plan?
    </p>
    <p className="text-ink text-16 font-extrabold">
      {draft.name.trim() || untitledPlanName}
    </p>
    <p className="text-ink-2 text-13 font-semibold">
      {[draft.versionGroupName, `${draft.members.length} Pokémon`]
        .filter(Boolean)
        .join(" · ")}
    </p>
  </OfferCard>
);
