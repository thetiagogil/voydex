"use client";

import type { PokemonTeamAnalysisSummary } from "@/features/play/utils/pokemon-team-analysis";
import { getTypeEffectiveness } from "@/features/play/utils/type-effectiveness";
import { cn } from "@/lib/utils/cn";
import { TypeDisplay } from "@/shared/components/type-display";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";
import { multiplierCellClassName } from "./pokemon-team-analysis-shared";

type PokemonTeamAnalysisTypeChartProps = {
  analysis: PokemonTeamAnalysisSummary;
  generationId: number;
};

export const PokemonTeamAnalysisTypeChart = ({
  analysis,
  generationId,
}: PokemonTeamAnalysisTypeChartProps) => {
  return (
    <div className="space-y-4">
      <div>
        <h3 className="font-semibold">Type effectiveness chart</h3>
        <p className="text-muted-foreground mt-1 text-sm">
          Green means super effective, red means resisted, and gray means no
          effect. This chart follows the current play generation.
        </p>
      </div>

      <Table className="min-w-[1040px] table-fixed">
        <TableHeader>
          <TableRow>
            <TableHead className="w-28">Atk \ Def</TableHead>
            {analysis.availableTypes.map((defendingType) => (
              <TableHead
                key={`defender-${defendingType}`}
                className="w-16 px-1 text-center"
              >
                <div className="flex justify-center">
                  <TypeDisplay type={defendingType} iconOnly size="sm" />
                </div>
              </TableHead>
            ))}
          </TableRow>
        </TableHeader>
        <TableBody>
          {analysis.availableTypes.map((attackingType) => (
            <TableRow key={`chart-${attackingType}`}>
              <TableCell>
                <div className="flex items-center gap-2">
                  <TypeDisplay type={attackingType} iconOnly size="sm" />
                  <span className="text-sm font-medium capitalize">
                    {attackingType}
                  </span>
                </div>
              </TableCell>
              {analysis.availableTypes.map((defendingType) => {
                const multiplier = getTypeEffectiveness(
                  attackingType,
                  defendingType,
                  generationId,
                );

                return (
                  <TableCell
                    key={`${attackingType}-${defendingType}`}
                    className="w-16 px-1 py-2"
                  >
                    <div
                      className={cn(
                        "rounded-md border px-2 py-1 text-center text-xs font-semibold",
                        multiplierCellClassName(multiplier),
                      )}
                    >
                      {multiplier}x
                    </div>
                  </TableCell>
                );
              })}
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </div>
  );
};
