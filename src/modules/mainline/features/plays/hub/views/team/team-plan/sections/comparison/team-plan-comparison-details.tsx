import { TeamPlanBuildComparison } from "./team-plan-build-comparison";
import { TeamPlanMovesComparison } from "./team-plan-moves-comparison";
import { TeamPlanPokemonIdentity } from "./team-plan-pokemon-identity";
import { TeamPlanStatus } from "./team-plan-status";
import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";

const MatchSummary = ({
  comparison,
}: {
  comparison: MainlinePlayTeamPlanMemberComparison;
}) => {
  return (
    <div className="border-line bg-muted/20 rounded-lg border p-3">
      <TeamPlanStatus status={comparison.status} detail />
    </div>
  );
};

const MemberNotes = ({ notes }: { notes: string | null }) => {
  if (!notes) return null;

  return (
    <section className="border-line grid gap-1 border-t pt-3">
      <h3 className="font-display text-sm font-semibold">Member notes</h3>
      <p className="text-muted-foreground text-xs leading-5">{notes}</p>
    </section>
  );
};

const ComparisonRelation = ({
  comparison,
}: {
  comparison: MainlinePlayTeamPlanMemberComparison;
}) => {
  const member = comparison.playMember;

  if (!member) {
    return (
      <p className="text-muted-foreground text-sm leading-6">
        No tracked Pokémon from {comparison.plannedName}&apos;s evolution family
        was found in this Play.
      </p>
    );
  }

  const trackedName = member.species_name ?? "Unknown Pokémon";

  return (
    <p className="text-muted-foreground text-sm leading-6">
      Comparing planned{" "}
      <span className="text-foreground font-semibold">
        {comparison.plannedName}
      </span>{" "}
      with tracked{" "}
      <span className="text-foreground font-semibold">
        {trackedName}
        {member.nickname ? ` (${member.nickname})` : ""}
      </span>
      {"."}
    </p>
  );
};

type TeamPlanComparisonDetailsProps = {
  comparison: MainlinePlayTeamPlanMemberComparison;
  idPrefix: string;
  mechanics: GameMechanicsProfile;
  variant?: "desktop" | "sheet";
};

export const TeamPlanComparisonDetails = ({
  comparison,
  idPrefix,
  mechanics,
  variant = "desktop",
}: TeamPlanComparisonDetailsProps) => {
  const canCompareBuild =
    comparison.playMember &&
    comparison.status !== "retired" &&
    comparison.status !== "replaced";
  const sheet = variant === "sheet";

  return (
    <div className="grid gap-4">
      {sheet ? (
        <div className="grid gap-2 sm:grid-cols-2">
          <TeamPlanPokemonIdentity
            comparison={comparison}
            side="planned"
            variant="summary"
          />
          <TeamPlanPokemonIdentity
            comparison={comparison}
            side="play"
            variant="summary"
          />
        </div>
      ) : (
        <ComparisonRelation comparison={comparison} />
      )}

      <MatchSummary comparison={comparison} />

      {canCompareBuild ? (
        <>
          <TeamPlanBuildComparison
            comparison={comparison}
            idPrefix={idPrefix}
            mechanics={mechanics}
          />
          <TeamPlanMovesComparison
            comparison={comparison}
            idPrefix={idPrefix}
          />
        </>
      ) : null}

      <MemberNotes notes={comparison.memberNotes} />
    </div>
  );
};
