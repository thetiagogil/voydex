"use client";

import type { PokemonTeamAnalysisSummary } from "@/features/play/utils/pokemon-team-analysis";
import { TypeDisplay } from "@/shared/components/type-display";
import { Badge } from "@/shared/components/ui/badge";
import { Card } from "@/shared/components/ui/card";
import { renderTypeBadges } from "./pokemon-team-analysis-shared";

type PokemonTeamAnalysisOverviewProps = {
  analysis: PokemonTeamAnalysisSummary;
  isSummary: boolean;
};

export const PokemonTeamAnalysisOverview = ({
  analysis,
  isSummary,
}: PokemonTeamAnalysisOverviewProps) => {
  return (
    <div className="space-y-6">
      <div className="grid gap-3 sm:grid-cols-2 xl:grid-cols-4">
        <Card className="gap-2 p-4">
          <p className="text-muted-foreground text-xs tracking-[0.18em] uppercase">
            Types covered by selected moves
          </p>
          <p className="text-2xl font-bold">
            {analysis.availableTypes.length - analysis.offensiveGaps.length}
            <span className="text-muted-foreground ml-1 text-sm font-medium">
              / {analysis.availableTypes.length}
            </span>
          </p>
          <p className="text-muted-foreground text-xs">
            Defending types hit super effectively by at least one selected move.
          </p>
        </Card>

        <Card className="gap-2 p-4">
          <p className="text-muted-foreground text-xs tracking-[0.18em] uppercase">
            Types covered by STAB
          </p>
          <p className="text-2xl font-bold">
            {analysis.availableTypes.length - analysis.stabGaps.length}
            <span className="text-muted-foreground ml-1 text-sm font-medium">
              / {analysis.availableTypes.length}
            </span>
          </p>
          <p className="text-muted-foreground text-xs">
            Defending types covered by a Pokemon using one of its own types.
          </p>
        </Card>

        <Card className="gap-2 p-4">
          <p className="text-muted-foreground text-xs tracking-[0.18em] uppercase">
            Missing from selected moves
          </p>
          <p className="text-2xl font-bold">{analysis.offensiveGaps.length}</p>
          <p className="text-muted-foreground text-xs">
            Defending types that no selected move currently covers.
          </p>
        </Card>

        <Card className="gap-2 p-4">
          <p className="text-muted-foreground text-xs tracking-[0.18em] uppercase">
            Missing from STAB
          </p>
          <p className="text-2xl font-bold">{analysis.stabGaps.length}</p>
          <p className="text-muted-foreground text-xs">
            Defending types that none of your Pokemon cover with STAB.
          </p>
        </Card>
      </div>

      <div className="grid gap-4 xl:grid-cols-2">
        <Card className="gap-4 p-4">
          <div>
            <h3 className="font-semibold">Missing from selected moves</h3>
            <p className="text-muted-foreground mt-1 text-sm">
              These defending types are not hit super effectively by any move.
            </p>
          </div>
          {renderTypeBadges(
            analysis.offensiveGaps,
            "Every defending type is covered by at least one move.",
          )}
        </Card>

        <Card className="gap-4 p-4">
          <div>
            <h3 className="font-semibold">Missing from STAB</h3>
            <p className="text-muted-foreground mt-1 text-sm">
              These defending types are not covered by any same-type attack
              source in your current Pokemon group.
            </p>
          </div>
          {renderTypeBadges(
            analysis.stabGaps,
            "Your current Pokemon typings cover every defending type with STAB.",
          )}
        </Card>

        {!isSummary ? (
          <>
            <Card className="gap-4 p-4">
              <div>
                <h3 className="font-semibold">Repeated Pokemon types</h3>
                <p className="text-muted-foreground mt-1 text-sm">
                  Useful for spotting duplicated typing in this view.
                </p>
              </div>
              {analysis.duplicateTypes.length > 0 ? (
                <div className="flex flex-wrap gap-2">
                  {analysis.duplicateTypes.map(({ type, count }) => (
                    <Badge key={type} variant="outline" className="gap-2">
                      <TypeDisplay type={type} size="sm" />
                      <span>{count}</span>
                    </Badge>
                  ))}
                </div>
              ) : (
                <span className="text-muted-foreground text-sm">
                  No Pokemon type is repeated in this view.
                </span>
              )}
            </Card>

            <Card className="gap-4 p-4">
              <div>
                <h3 className="font-semibold">Move types selected</h3>
                <p className="text-muted-foreground mt-1 text-sm">
                  These are the different move types currently set on this
                  group.
                </p>
              </div>
              {renderTypeBadges(
                analysis.uniqueMoveTypes,
                "No moves are set yet in this view.",
                10,
              )}
            </Card>
          </>
        ) : null}
      </div>
    </div>
  );
};
