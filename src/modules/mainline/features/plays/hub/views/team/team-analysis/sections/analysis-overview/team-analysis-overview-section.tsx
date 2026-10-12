import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import type { TeamAnalysisModel } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { Button } from "@/shared/components/ui/button";
import { ButtonGroup } from "@/shared/components/ui/button-group";
import { cn } from "@/shared/utils/cn";

import {
  getTeamAnalysisMemberId,
  getTeamAnalysisMemberName,
  TeamAnalysisMemberPortrait,
} from "../../components/team-analysis-member";
import { TeamAnalysisInformationTip } from "./team-analysis-information-tip";

type TeamAnalysisOverviewSectionProps = {
  analysis: TeamAnalysisModel;
};

const TeamAnalysisLensGroup = ({ className }: { className?: string }) => {
  return (
    <ButtonGroup
      aria-label="Team Analysis lens"
      className={cn("shrink-0", className)}
    >
      <Button size="xs" variant="outline" aria-pressed>
        Overall
      </Button>
      <Button
        size="xs"
        variant="outline"
        disabled
        aria-pressed={false}
        aria-label="Story matchups, not available yet"
      >
        Story matchups
      </Button>
    </ButtonGroup>
  );
};

export const TeamAnalysisOverviewSection = ({
  analysis,
}: TeamAnalysisOverviewSectionProps) => {
  const { evidence } = analysis;
  const activeTeamIsComplete =
    evidence.activeCount === evidence.possibleActiveCount;
  const movesAreComplete =
    evidence.possibleMoveCount > 0 &&
    evidence.recordedMoveCount === evidence.possibleMoveCount;

  return (
    <MainlinePlaySectionCard
      title={analysis.lineupLabel}
      headingLevel={3}
      description={
        <span className="flex flex-wrap items-center gap-x-2">
          <span>
            <span
              className={cn(
                "font-semibold",
                activeTeamIsComplete ? "text-primary" : "text-foreground",
              )}
            >
              {evidence.activeCount}/{evidence.possibleActiveCount}
            </span>{" "}
            recorded Active members
          </span>
          <span aria-hidden>·</span>
          <span>
            <span
              className={cn(
                "font-semibold",
                movesAreComplete ? "text-primary" : "text-foreground",
              )}
            >
              {evidence.recordedMoveCount}/{evidence.possibleMoveCount}
            </span>{" "}
            recorded moves
          </span>
        </span>
      }
      action={
        <div className="hidden items-center gap-4 xl:flex">
          <TeamAnalysisInformationTip
            abilitiesSupported={evidence.abilityRecordedCount !== null}
            heldItemsSupported={evidence.heldItemRecordedCount !== null}
          />
          <TeamAnalysisLensGroup />
        </div>
      }
      contentClassName="grid gap-3 pt-0 pb-3"
    >
      <div className="grid grid-cols-2 gap-2 sm:grid-cols-3 lg:grid-cols-6">
        {analysis.members.map((member) => (
          <div
            key={getTeamAnalysisMemberId(member)}
            className="flex min-w-0 items-center gap-2 px-1 py-2"
          >
            <TeamAnalysisMemberPortrait member={member} />
            <div className="min-w-0">
              <p className="truncate text-sm font-semibold">
                {getTeamAnalysisMemberName(member)}
              </p>
              <div className="flex items-center gap-1.5">
                <p className="text-muted-foreground text-xs">
                  Slot {member.slot ?? "—"}
                </p>
                <PokemonTypeList
                  primaryType={member.primaryType}
                  secondaryType={member.secondaryType}
                  badgeDisplay="icon"
                  badgeSize="sm"
                  className="gap-1"
                />
              </div>
            </div>
          </div>
        ))}
      </div>

      <div className="border-line flex flex-col gap-3 border-t pt-3 sm:flex-row sm:items-center sm:justify-between xl:hidden">
        <div className="flex flex-1 flex-wrap items-center">
          <TeamAnalysisInformationTip
            abilitiesSupported={evidence.abilityRecordedCount !== null}
            heldItemsSupported={evidence.heldItemRecordedCount !== null}
          />
        </div>
        <TeamAnalysisLensGroup className="self-start sm:self-auto" />
      </div>
    </MainlinePlaySectionCard>
  );
};
