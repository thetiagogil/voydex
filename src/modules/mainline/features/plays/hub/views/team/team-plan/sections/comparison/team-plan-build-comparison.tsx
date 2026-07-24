import {
  comparisonFieldGridClassName,
  formatComparisonValue,
  TeamPlanComparisonFieldHeader,
  TeamPlanComparisonResult,
} from "@/modules/mainline/features/plays/hub/views/team/team-plan/sections/comparison/team-plan-comparison-field";
import type {
  MainlinePlayTeamPlanCriterion,
  MainlinePlayTeamPlanMemberComparison,
} from "@/modules/mainline/features/plays/hub/types";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import { cn } from "@/shared/utils/cn";

const buildCriterionDefinitions = [
  {
    key: "ability",
    label: "Ability",
    mechanic: gameMechanics.abilities,
  },
  {
    key: "nature",
    label: "Nature",
    mechanic: gameMechanics.natures,
  },
  {
    key: "heldItem",
    label: "Held item",
    mechanic: gameMechanics.heldItems,
  },
  {
    key: "gender",
    label: "Gender",
    mechanic: gameMechanics.pokemonGender,
  },
] as const satisfies {
  key: keyof MainlinePlayTeamPlanMemberComparison["build"];
  label: string;
  mechanic: GameMechanic;
}[];

const getCriterionExplanation = (
  label: string,
  criterion: MainlinePlayTeamPlanCriterion,
) => {
  if (criterion.matches === null) {
    return `${label} is not specified by the Plan and does not affect the comparison.`;
  }

  if (criterion.matches) {
    return `${label} matches the Plan.`;
  }

  if (!criterion.actual) {
    return `${label} is planned but is not recorded in this Play.`;
  }

  return `${label} differs from the Plan.`;
};

const BuildCriterionRow = ({
  criterion,
  label,
}: {
  criterion: MainlinePlayTeamPlanCriterion;
  label: string;
}) => {
  const description = getCriterionExplanation(label, criterion);

  return (
    <div
      className={cn(
        "border-app-surface-border/50 grid items-start gap-2 border-t py-2",
        comparisonFieldGridClassName,
      )}
    >
      <dt className="text-muted-foreground text-[0.6875rem] font-medium uppercase">
        {label}
      </dt>
      <dd className="text-foreground min-w-0 text-center text-xs leading-5">
        {criterion.planned ? formatComparisonValue(criterion.planned) : "Any"}
      </dd>
      <dd className="flex justify-center pt-0.5">
        <TeamPlanComparisonResult
          description={description}
          matches={criterion.matches}
        />
      </dd>
      <dd className="text-foreground min-w-0 text-center text-xs leading-5">
        {formatComparisonValue(criterion.actual)}
      </dd>
    </div>
  );
};

export const TeamPlanBuildComparison = ({
  comparison,
  idPrefix,
  mechanics,
}: {
  comparison: MainlinePlayTeamPlanMemberComparison;
  idPrefix: string;
  mechanics: GameMechanicsProfile;
}) => {
  const criteria = buildCriterionDefinitions.filter(({ mechanic }) => {
    return supportsGameMechanic(mechanics, mechanic);
  });

  if (!criteria.length) return null;

  return (
    <section
      className="grid gap-1"
      aria-labelledby={`${idPrefix}-build-comparison`}
    >
      <h3
        id={`${idPrefix}-build-comparison`}
        className="text-primary font-serif text-sm font-semibold"
      >
        Build comparison
      </h3>
      <TeamPlanComparisonFieldHeader />
      <dl>
        {criteria.map(({ key, label }) => (
          <BuildCriterionRow
            key={key}
            label={label}
            criterion={comparison.build[key]}
          />
        ))}
      </dl>
    </section>
  );
};
