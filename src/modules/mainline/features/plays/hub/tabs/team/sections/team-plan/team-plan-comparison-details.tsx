import { getTeamMemberName } from "@/modules/mainline/features/plays/hub/tabs/team/display/team-member-display";
import { TeamPlanStatus } from "@/modules/mainline/features/plays/hub/tabs/team/sections/team-plan/team-plan-status";
import type {
  MainlinePlayTeamPlanCriterion,
  MainlinePlayTeamPlanMemberComparison,
} from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberImageUrl } from "@/modules/mainline/features/plays/shared/display/play-team-member-display";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

const formatCriterionValue = (value: string | null) => {
  if (!value) return "Not recorded";
  if (value === "male") return "Male";
  if (value === "female") return "Female";
  if (value === "genderless") return "Genderless";
  return value;
};

const ComparisonResult = ({
  criterion,
}: {
  criterion: MainlinePlayTeamPlanCriterion;
}) => {
  const label =
    criterion.matches === null
      ? "Not specified"
      : criterion.matches
        ? "Matches"
        : "Different";
  const icon =
    criterion.matches === null
      ? appIcons.product.uncaught
      : criterion.matches
        ? appIcons.status.active
        : appIcons.status.warning;

  return (
    <span
      className={cn(
        "flex size-5 items-center justify-center rounded-full border",
        criterion.matches === null
          ? "border-muted-foreground/25 text-muted-foreground"
          : criterion.matches
            ? "border-success/30 bg-success/8 text-success"
            : "border-warning/30 bg-warning/8 text-warning",
      )}
      aria-label={label}
      title={label}
    >
      <AppIcon icon={icon} size="xs" aria-hidden />
    </span>
  );
};

const ComparisonCriterionRow = ({
  criterion,
  label,
}: {
  criterion: MainlinePlayTeamPlanCriterion;
  label: string;
}) => {
  return (
    <div className="border-app-surface-border/50 grid grid-cols-[4.75rem_minmax(0,1fr)_1.25rem_minmax(0,1fr)] items-start gap-2 border-t py-2 first:border-t-0">
      <dt className="text-muted-foreground text-[0.6875rem] font-medium uppercase">
        {label}
      </dt>
      <dd className="text-foreground min-w-0 text-xs leading-5">
        {criterion.planned ? formatCriterionValue(criterion.planned) : "Any"}
      </dd>
      <dd className="flex justify-center pt-0.5">
        <ComparisonResult criterion={criterion} />
      </dd>
      <dd className="text-foreground min-w-0 text-xs leading-5">
        {formatCriterionValue(criterion.actual)}
      </dd>
    </div>
  );
};

const PokemonSummary = ({
  comparison,
  side,
}: {
  comparison: MainlinePlayTeamPlanMemberComparison;
  side: "planned" | "current";
}) => {
  const member = comparison.playMember;
  const planned = side === "planned";
  const name = planned
    ? comparison.plannedName
    : member
      ? getTeamMemberName(member)
      : "No matched Pokémon";
  const imageUrl = planned
    ? getPokemonFormImageUrl({
        name: comparison.plannedName,
        sprite_slug: comparison.plannedSpriteSlug,
      })
    : member
      ? getPlayTeamMemberImageUrl(member)
      : null;

  return (
    <div className="border-app-surface-border/60 flex min-w-0 items-center gap-3 rounded-lg border p-3">
      <PokemonPortrait
        alt={imageUrl ? `${name} portrait` : ""}
        imageUrl={imageUrl}
        fallbackOnError
        sizes="3.5rem"
        className="border-app-surface-border/50 bg-background/45 size-14 rounded-lg"
        glowClassName="opacity-0"
        imageClassName="p-1.5"
      />
      <div className="grid min-w-0 gap-1">
        <p className="text-muted-foreground text-[0.6875rem] font-medium uppercase">
          {planned ? "Planned" : "In this Play"}
        </p>
        <p className="text-foreground truncate font-serif text-base font-semibold">
          {name}
        </p>
        <div className="flex min-w-0 items-center gap-2">
          <p className="text-muted-foreground truncate text-xs">
            {planned
              ? (comparison.roleLabel ?? comparison.plannedFormName)
              : member
                ? `${member.species_name ?? name} · ${member.roster_state_name}`
                : "No family match found"}
          </p>
          {!planned && member ? (
            <PokemonTypeList
              primaryType={member.primaryType}
              secondaryType={member.secondaryType}
              badgeDisplay="icon"
              badgeSize="sm"
              className="shrink-0 gap-1"
            />
          ) : null}
        </div>
      </div>
    </div>
  );
};

type TeamPlanComparisonDetailsProps = {
  comparison: MainlinePlayTeamPlanMemberComparison;
  idPrefix: string;
};

export const TeamPlanComparisonDetails = ({
  comparison,
  idPrefix,
}: TeamPlanComparisonDetailsProps) => {
  const canCompareBuild =
    comparison.playMember &&
    comparison.status !== "retired" &&
    comparison.status !== "replaced";

  return (
    <div className="grid gap-4">
      <div className="grid gap-2 sm:grid-cols-2">
        <PokemonSummary comparison={comparison} side="planned" />
        <PokemonSummary comparison={comparison} side="current" />
      </div>

      <div className="border-app-surface-border/60 bg-muted/20 rounded-lg border p-3">
        <TeamPlanStatus status={comparison.status} detail />
      </div>

      {canCompareBuild ? (
        <section
          className="grid gap-2"
          aria-labelledby={`${idPrefix}-build-comparison`}
        >
          <h3
            id={`${idPrefix}-build-comparison`}
            className="text-primary font-serif text-sm font-semibold"
          >
            Build comparison
          </h3>
          <div className="border-app-surface-border/60 rounded-lg border px-3">
            <div className="text-muted-foreground grid grid-cols-[4.75rem_minmax(0,1fr)_1.25rem_minmax(0,1fr)] gap-2 py-2 text-[0.625rem] font-medium uppercase">
              <span />
              <span>Planned</span>
              <span />
              <span>In Play</span>
            </div>
            <dl>
              <ComparisonCriterionRow
                label="Ability"
                criterion={comparison.build.ability}
              />
              <ComparisonCriterionRow
                label="Nature"
                criterion={comparison.build.nature}
              />
              <ComparisonCriterionRow
                label="Held item"
                criterion={comparison.build.heldItem}
              />
              <ComparisonCriterionRow
                label="Gender"
                criterion={comparison.build.gender}
              />
              <ComparisonCriterionRow
                label="Moves"
                criterion={comparison.build.moves}
              />
            </dl>
          </div>
        </section>
      ) : null}

      {comparison.memberNotes ? (
        <section className="border-app-surface-border/60 grid gap-1 border-t pt-3">
          <h3 className="font-serif text-sm font-semibold">Member notes</h3>
          <p className="text-muted-foreground text-xs leading-5">
            {comparison.memberNotes}
          </p>
        </section>
      ) : null}
    </div>
  );
};
