"use client";

import type { PokemonTeamAnalysisSummary } from "@/features/play/utils/pokemon-team-analysis";
import { TypeDisplay } from "@/shared/components/type-display";
import {
  Tabs,
  TabsContent,
  TabsList,
  TabsTrigger,
} from "@/shared/components/ui/tabs";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";
import {
  CountBadge,
  renderDefensiveExposure,
  renderMoveCoverageBadges,
  renderStabCoverageBadges,
} from "./pokemon-team-analysis-shared";

type PokemonTeamAnalysisCoverageProps = {
  analysis: PokemonTeamAnalysisSummary;
};

export const PokemonTeamAnalysisCoverage = ({
  analysis,
}: PokemonTeamAnalysisCoverageProps) => {
  return (
    <Tabs defaultValue="offense" className="flex min-h-full flex-col gap-0">
      <div className="border-border border-b pb-4">
        <TabsList>
          <TabsTrigger value="offense">Offense</TabsTrigger>
          <TabsTrigger value="defense">Defense</TabsTrigger>
        </TabsList>
      </div>

      <TabsContent value="offense" className="m-0 flex-1 space-y-4 py-4">
        <div>
          <h3 className="font-semibold">Offensive coverage</h3>
          <p className="text-muted-foreground mt-1 text-sm">
            Move Count is how many selected moves hit that type super
            effectively. STAB Count is how many Pokemon do the same with one of
            their own types.
          </p>
        </div>

        <Table>
          <TableHeader>
            <TableRow>
              <TableHead className="w-36">Target Type</TableHead>
              <TableHead className="w-24 text-center">Move Count</TableHead>
              <TableHead className="w-24 text-center">STAB Count</TableHead>
              <TableHead>Pokemon</TableHead>
              <TableHead>STAB Sources</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {analysis.rows.map((row) => (
              <TableRow key={`offense-${row.type}`}>
                <TableCell>
                  <TypeDisplay type={row.type} size="sm" />
                </TableCell>
                <TableCell className="text-center">
                  <CountBadge
                    value={row.moveCoverage.length}
                    tone={row.moveCoverage.length > 0 ? "positive" : "neutral"}
                  />
                </TableCell>
                <TableCell className="text-center">
                  <CountBadge
                    value={row.stabCoverage.length}
                    tone={row.stabCoverage.length > 0 ? "warning" : "neutral"}
                  />
                </TableCell>
                <TableCell>
                  {renderMoveCoverageBadges(
                    row.moveCoverage,
                    "No Pokemon in this view covers this type with a move.",
                  )}
                </TableCell>
                <TableCell>
                  {renderStabCoverageBadges(
                    row.stabCoverage,
                    "No Pokemon in this view covers this type with STAB.",
                  )}
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TabsContent>

      <TabsContent value="defense" className="m-0 flex-1 space-y-4 py-4">
        <div>
          <h3 className="font-semibold">Defensive coverage</h3>
          <p className="text-muted-foreground mt-1 text-sm">
            These counts show how many Pokemon are weak, resistant, or immune to
            each incoming type.
          </p>
        </div>

        <Table>
          <TableHeader>
            <TableRow>
              <TableHead className="w-36">Incoming Type</TableHead>
              <TableHead className="w-24 text-center">Weak</TableHead>
              <TableHead className="w-24 text-center">Resist</TableHead>
              <TableHead className="w-24 text-center">Immune</TableHead>
              <TableHead>Most Exposed Pokemon</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {analysis.rows.map((row) => (
              <TableRow key={`defense-${row.type}`}>
                <TableCell>
                  <TypeDisplay type={row.type} size="sm" />
                </TableCell>
                <TableCell className="text-center">
                  <CountBadge
                    value={row.weakPokemon.length}
                    tone={row.weakPokemon.length > 0 ? "danger" : "neutral"}
                  />
                </TableCell>
                <TableCell className="text-center">
                  <CountBadge
                    value={row.resistPokemon.length}
                    tone={row.resistPokemon.length > 0 ? "positive" : "neutral"}
                  />
                </TableCell>
                <TableCell className="text-center">
                  <CountBadge
                    value={row.immunePokemon.length}
                    tone={row.immunePokemon.length > 0 ? "warning" : "neutral"}
                  />
                </TableCell>
                <TableCell>
                  {renderDefensiveExposure(
                    row.weakPokemon,
                    "No Pokemon in this view is weak to this type.",
                  )}
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TabsContent>
    </Tabs>
  );
};
