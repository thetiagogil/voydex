import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";

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
      <div className="flex flex-wrap items-baseline gap-x-3 gap-y-0.5">
        <h2 id="team-plan-targets-title" className="text-24">
          Planned team
        </h2>
        {comparisons.length ? (
          <span className="text-ink-3 text-14 hidden font-semibold sm:inline">
            Choose a target to compare it with what you recorded
          </span>
        ) : null}
      </div>

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
        <p className="border-dash text-ink-3 text-14 rounded-lg border-2 border-dashed p-6 text-center font-semibold">
          This Plan has no planned Pokémon yet.
        </p>
      )}
    </section>
  );
};
