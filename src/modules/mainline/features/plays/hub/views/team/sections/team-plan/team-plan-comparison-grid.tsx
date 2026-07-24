import type {
  MainlinePlayTeamPlanCriterion,
  MainlinePlayTeamPlanMemberComparison,
  MainlinePlayTeamPlanMoveComparison,
} from "@/modules/mainline/features/plays/hub/types";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { cn } from "@/shared/utils/cn";

const comparisonGridClassName =
  "grid-cols-[4.75rem_minmax(0,1fr)_1.5rem_minmax(0,1fr)]";

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

const formatCriterionValue = (value: string | null) => {
  if (!value) return "Not recorded";
  if (value === "male") return "Male";
  if (value === "female") return "Female";
  if (value === "genderless") return "Genderless";
  return value;
};

const getComparisonExplanation = (
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

const ComparisonResult = ({
  description,
  matches,
}: {
  description: string;
  matches: boolean | null;
}) => {
  const icon =
    matches === null
      ? appIcons.product.uncaught
      : matches
        ? appIcons.status.active
        : appIcons.status.warning;

  return (
    <ExplanatoryTip
      content={description}
      contentClassName="max-w-64 text-center"
      trigger={
        <button
          type="button"
          className={cn(
            "focus-visible:ring-ring/40 flex size-5 items-center justify-center rounded-full border outline-none focus-visible:ring-2",
            matches === null
              ? "border-muted-foreground/25 text-muted-foreground"
              : matches
                ? "border-success/30 bg-success/8 text-success"
                : "border-warning/30 bg-warning/8 text-warning",
          )}
          aria-label={description}
        />
      }
    >
      <AppIcon icon={icon} size="xs" aria-hidden />
    </ExplanatoryTip>
  );
};

const ComparisonHeader = () => {
  return (
    <div
      className={cn(
        "text-muted-foreground grid gap-2 py-2 text-[0.625rem] font-medium uppercase",
        comparisonGridClassName,
      )}
      aria-hidden
    >
      <span />
      <span className="text-center">Planned</span>
      <span />
      <span className="text-center">Tracked</span>
    </div>
  );
};

const ComparisonCriterionRow = ({
  criterion,
  label,
}: {
  criterion: MainlinePlayTeamPlanCriterion;
  label: string;
}) => {
  const description = getComparisonExplanation(label, criterion);

  return (
    <div
      className={cn(
        "border-app-surface-border/50 grid items-start gap-2 border-t py-2",
        comparisonGridClassName,
      )}
    >
      <dt className="text-muted-foreground text-[0.6875rem] font-medium uppercase">
        {label}
      </dt>
      <dd className="text-foreground min-w-0 text-center text-xs leading-5">
        {criterion.planned ? formatCriterionValue(criterion.planned) : "Any"}
      </dd>
      <dd className="flex justify-center pt-0.5">
        <ComparisonResult
          description={description}
          matches={criterion.matches}
        />
      </dd>
      <dd className="text-foreground min-w-0 text-center text-xs leading-5">
        {formatCriterionValue(criterion.actual)}
      </dd>
    </div>
  );
};

const getMoveExplanation = (
  row: MainlinePlayTeamPlanMoveComparison,
  position: number,
) => {
  const label = `Move ${position}`;

  if (row.matches === null) {
    return `${label} is not specified by the Plan and does not affect the comparison.`;
  }

  if (row.matches) {
    return `${label} matches the Plan, even if it is recorded in another move slot.`;
  }

  if (!row.actual) {
    return `${row.planned?.name ?? label} is planned but is not recorded in this Play.`;
  }

  return `${row.actual.name} differs from the planned ${row.planned?.name ?? "move"}.`;
};

const MoveComparisonRow = ({
  position,
  row,
}: {
  position: number;
  row: MainlinePlayTeamPlanMoveComparison;
}) => {
  const description = getMoveExplanation(row, position);

  return (
    <div
      className={cn(
        "border-app-surface-border/50 grid items-start gap-2 border-t py-2",
        comparisonGridClassName,
      )}
    >
      <dt className="text-muted-foreground text-[0.6875rem] font-medium uppercase">
        Move {position}
      </dt>
      <dd className="text-foreground min-w-0 text-center text-xs leading-5">
        {row.planned?.name ?? "Any"}
      </dd>
      <dd className="flex justify-center pt-0.5">
        <ComparisonResult description={description} matches={row.matches} />
      </dd>
      <dd className="text-foreground min-w-0 text-center text-xs leading-5">
        {row.actual?.name ?? "Not recorded"}
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

  if (!criteria.length) {
    return null;
  }

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
      <ComparisonHeader />
      <dl>
        {criteria.map(({ key, label }) => (
          <ComparisonCriterionRow
            key={key}
            label={label}
            criterion={comparison.build[key]}
          />
        ))}
      </dl>
    </section>
  );
};

export const TeamPlanMovesComparison = ({
  comparison,
  idPrefix,
}: {
  comparison: MainlinePlayTeamPlanMemberComparison;
  idPrefix: string;
}) => {
  return (
    <section
      className="grid gap-1"
      aria-labelledby={`${idPrefix}-moves-comparison`}
    >
      <h3
        id={`${idPrefix}-moves-comparison`}
        className="text-primary font-serif text-sm font-semibold"
      >
        Moves comparison
      </h3>
      {comparison.moves.length ? (
        <>
          <ComparisonHeader />
          <dl>
            {comparison.moves.map((row, index) => (
              <MoveComparisonRow
                key={`${row.planned?.id ?? "any"}-${row.actual?.id ?? "missing"}-${index}`}
                position={index + 1}
                row={row}
              />
            ))}
          </dl>
        </>
      ) : (
        <p className="text-muted-foreground py-2 text-xs leading-5">
          No moves are specified in the Plan or recorded in this Play.
        </p>
      )}
    </section>
  );
};
