import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { SectionHead } from "@/shared/components/section-head";

import { TeamPlanTargetCard } from "./team-plan-target-card";

type TeamPlanTargetsSectionProps = {
  comparisons: MainlinePlayTeamPlanMemberComparison[];
  mechanics: GameMechanicsProfile;
  onSelect: (comparison: MainlinePlayTeamPlanMemberComparison) => void;
};

/* A grid of cards keeps its heading on the page: the Plan's targets. */
export const TeamPlanTargetsSection = ({
  comparisons,
  mechanics,
  onSelect,
}: TeamPlanTargetsSectionProps) => {
  return (
    <section aria-labelledby="team-plan-targets-title" className="grid gap-4">
      <SectionHead
        title="Planned team"
        titleId="team-plan-targets-title"
        aside={
          comparisons.length
            ? "Choose a target to compare it with what you recorded"
            : undefined
        }
      />

      {comparisons.length ? (
        <ul className="grid grid-cols-1 gap-3 sm:grid-cols-2 sm:gap-5 lg:grid-cols-3">
          {comparisons.map((comparison) => (
            <li key={comparison.planMemberId} className="min-w-0">
              <TeamPlanTargetCard
                comparison={comparison}
                mechanics={mechanics}
                onSelect={onSelect}
              />
            </li>
          ))}
        </ul>
      ) : (
        <p className="empty-slot text-ink-3 text-14 rounded-lg p-6 text-center font-semibold">
          This Plan has no planned Pokémon yet.
        </p>
      )}
    </section>
  );
};
