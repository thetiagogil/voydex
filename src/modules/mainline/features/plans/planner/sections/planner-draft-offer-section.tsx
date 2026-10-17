import type { PlanDraft } from "@/modules/mainline/features/plans/planner/client/use-plan-draft";
import { untitledPlanName } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import { PlanTeamStrip } from "@/modules/mainline/features/plans/components/plan-team-strip";
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
  <section
    aria-label="Unsaved Plan"
    data-slot="card"
    className="bg-surface shadow-card flex flex-wrap items-center gap-x-5 gap-y-3 rounded-2xl px-5 py-4"
  >
    <div className="flex min-w-0 flex-1 basis-60 flex-col gap-1">
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
    </div>
    {draft.preview.length ? (
      <PlanTeamStrip
        members={draft.preview}
        className="w-full max-w-64 sm:w-64"
      />
    ) : null}
    <div className="flex gap-2 max-sm:w-full max-sm:*:flex-1">
      <Button
        type="button"
        variant="secondary"
        size="sm"
        onClick={onStartFresh}
      >
        Start fresh
      </Button>
      <Button type="button" size="sm" onClick={onContinue}>
        Continue
      </Button>
    </div>
  </section>
);
