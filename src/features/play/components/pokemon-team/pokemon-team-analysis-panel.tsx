"use client";

import { cn } from "@/lib/utils/cn";
import { TypeDisplay } from "@/shared/components/type-display";
import { Badge } from "@/shared/components/ui/badge";
import { Card } from "@/shared/components/ui/card";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";
import {
  Tabs,
  TabsContent,
  TabsList,
  TabsTrigger,
} from "@/shared/components/ui/tabs";
import type { PokemonType } from "@/shared/constants/reference";
import { useMemo } from "react";
import type { PlayPokemon } from "../../types";
import {
  buildPokemonTeamAnalysis,
  type PokemonTeamCoverageMove,
  type PokemonTeamCoverageStab,
} from "../../utils/pokemon-team-analysis";
import { getPlayPokemonDisplayName } from "../../utils/pokemon-team-display";
import { getTypeEffectiveness } from "../../utils/type-effectiveness";

type PokemonTeamAnalysisPanelProps = {
  pokemon: PlayPokemon[];
  generationId: number;
};

const CountBadge = ({
  value,
  tone = "neutral",
}: {
  value: number;
  tone?: "positive" | "warning" | "danger" | "neutral";
}) => {
  const toneClassName =
    tone === "positive"
      ? "border-emerald-500/30 bg-emerald-500/12 text-emerald-300"
      : tone === "warning"
        ? "border-amber-500/30 bg-amber-500/12 text-amber-300"
        : tone === "danger"
          ? "border-rose-500/30 bg-rose-500/12 text-rose-300"
          : "border-border bg-muted/20 text-foreground";

  return (
    <Badge variant="outline" className={cn("min-w-9 justify-center", toneClassName)}>
      {value}
    </Badge>
  );
};

const renderTypeBadges = (
  types: PokemonType[],
  emptyMessage: string,
  limit?: number,
) => {
  const visibleTypes = limit ? types.slice(0, limit) : types;

  if (visibleTypes.length === 0) {
    return <span className="text-muted-foreground text-sm">{emptyMessage}</span>;
  }

  return (
    <div className="flex flex-wrap gap-2">
      {visibleTypes.map((type) => (
        <TypeDisplay key={type} type={type} size="sm" />
      ))}
      {limit && types.length > limit ? (
        <Badge variant="outline">+{types.length - limit} more</Badge>
      ) : null}
    </div>
  );
};

const renderMoveCoverageBadges = (
  coverage: PokemonTeamCoverageMove[],
  emptyMessage: string,
) => {
  if (coverage.length === 0) {
    return <span className="text-muted-foreground text-sm">{emptyMessage}</span>;
  }

  return (
    <div className="flex flex-wrap gap-2">
      {coverage.slice(0, 3).map((entry, index) => (
        <Badge key={`${entry.pokemon.id}-${entry.moveName}-${index}`} variant="outline">
          {entry.moveName} · {getPlayPokemonDisplayName(entry.pokemon)}
        </Badge>
      ))}
      {coverage.length > 3 ? (
        <Badge variant="secondary">+{coverage.length - 3} more</Badge>
      ) : null}
    </div>
  );
};

const renderStabCoverageBadges = (
  coverage: PokemonTeamCoverageStab[],
  emptyMessage: string,
) => {
  if (coverage.length === 0) {
    return <span className="text-muted-foreground text-sm">{emptyMessage}</span>;
  }

  return (
    <div className="flex flex-wrap gap-2">
      {coverage.slice(0, 3).map((entry, index) => (
        <Badge key={`${entry.pokemon.id}-${entry.type}-${index}`} variant="outline">
          {entry.type.charAt(0).toUpperCase() + entry.type.slice(1)} ·{" "}
          {getPlayPokemonDisplayName(entry.pokemon)}
        </Badge>
      ))}
      {coverage.length > 3 ? (
        <Badge variant="secondary">+{coverage.length - 3} more</Badge>
      ) : null}
    </div>
  );
};

const renderDefensiveExposure = (
  pokemon: Array<{ pokemon: PlayPokemon; multiplier: number }>,
  emptyMessage: string,
) => {
  if (pokemon.length === 0) {
    return <span className="text-muted-foreground text-sm">{emptyMessage}</span>;
  }

  return (
    <div className="flex flex-wrap gap-2">
      {pokemon.slice(0, 3).map(({ pokemon: member, multiplier }) => (
        <Badge key={member.id} variant="outline">
          {getPlayPokemonDisplayName(member)} · {multiplier}x
        </Badge>
      ))}
      {pokemon.length > 3 ? (
        <Badge variant="secondary">+{pokemon.length - 3} more</Badge>
      ) : null}
    </div>
  );
};

const multiplierCellClassName = (multiplier: number) => {
  if (multiplier >= 4) {
    return "border-emerald-500/35 bg-emerald-500/18 text-emerald-200";
  }

  if (multiplier > 1) {
    return "border-emerald-500/30 bg-emerald-500/12 text-emerald-300";
  }

  if (multiplier === 0) {
    return "border-slate-400/30 bg-slate-400/12 text-slate-200";
  }

  if (multiplier <= 0.25) {
    return "border-rose-500/35 bg-rose-500/18 text-rose-200";
  }

  if (multiplier < 1) {
    return "border-rose-500/30 bg-rose-500/12 text-rose-300";
  }

  return "border-border bg-muted/20 text-muted-foreground";
};

export const PokemonTeamAnalysisPanel = ({
  pokemon,
  generationId,
}: PokemonTeamAnalysisPanelProps) => {
  const analysis = useMemo(
    () => buildPokemonTeamAnalysis(pokemon, generationId),
    [generationId, pokemon],
  );

  if (pokemon.length === 0) {
    return (
      <div className="flex min-h-[560px] items-center justify-center p-6 text-center">
        <p className="text-muted-foreground max-w-md text-sm">
          Add Pokemon to this view to see move coverage, defensive weaknesses,
          and the type chart.
        </p>
      </div>
    );
  }

  return (
    <Tabs defaultValue="overview" className="flex min-h-[560px] flex-col gap-0">
      <div className="border-border border-b px-4 py-3 md:px-6">
        <TabsList>
          <TabsTrigger value="overview">Overview</TabsTrigger>
          <TabsTrigger value="coverage">Coverage</TabsTrigger>
          <TabsTrigger value="chart">Type Chart</TabsTrigger>
        </TabsList>
      </div>

      <TabsContent value="overview" className="m-0 flex-1 space-y-6 p-4 md:p-6">
        <div className="grid gap-3 sm:grid-cols-2 xl:grid-cols-4">
          <Card className="gap-2 p-4">
            <p className="text-muted-foreground text-xs uppercase tracking-[0.18em]">
              Pokemon in this view
            </p>
            <p className="text-2xl font-bold">{analysis.rosterCount}</p>
            <p className="text-muted-foreground text-xs">
              How many Pokemon are included in this analysis right now.
            </p>
          </Card>

          <Card className="gap-2 p-4">
            <p className="text-muted-foreground text-xs uppercase tracking-[0.18em]">
              Pokemon types in this view
            </p>
            <p className="text-2xl font-bold">{analysis.uniqueTypes.length}</p>
            <p className="text-muted-foreground text-xs">
              Different Pokemon types used by the current Pokemon.
            </p>
          </Card>

          <Card className="gap-2 p-4">
            <p className="text-muted-foreground text-xs uppercase tracking-[0.18em]">
              Enemy types covered by moves
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
            <p className="text-muted-foreground text-xs uppercase tracking-[0.18em]">
              Enemy attack types to watch
            </p>
            <p className="text-2xl font-bold">
              {analysis.defensivePressureTypes.length}
            </p>
            <p className="text-muted-foreground text-xs">
              Attack types that pressure more of your Pokemon than your team covers.
            </p>
          </Card>
        </div>

        <div className="grid gap-4 xl:grid-cols-2">
          <Card className="gap-4 p-4">
            <div>
              <h3 className="font-semibold">Enemy types not covered by moves</h3>
              <p className="text-muted-foreground mt-1 text-sm">
                These defending types are not hit super effectively by any selected
                move in this view.
              </p>
            </div>
            {renderTypeBadges(
              analysis.offensiveGaps,
              "Every defending type is covered by at least one selected move.",
            )}
          </Card>

          <Card className="gap-4 p-4">
            <div>
              <h3 className="font-semibold">Attack types that pressure this view</h3>
              <p className="text-muted-foreground mt-1 text-sm">
                These attacking types hit more of your Pokemon than your team resists
                or blocks.
              </p>
            </div>
            {renderTypeBadges(
              analysis.defensivePressureTypes,
              "No attack type currently stands out as a major pressure point.",
            )}
          </Card>

          <Card className="gap-4 p-4">
            <div>
              <h3 className="font-semibold">Pokemon types repeated in this view</h3>
              <p className="text-muted-foreground mt-1 text-sm">
                Useful for spotting duplicated typing across the current group.
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
              <h3 className="font-semibold">Move types selected in this view</h3>
              <p className="text-muted-foreground mt-1 text-sm">
                These are the different move types currently set on this group.
              </p>
            </div>
            {renderTypeBadges(
              analysis.uniqueMoveTypes,
              "No moves are set yet in this view.",
              10,
            )}
          </Card>
        </div>
      </TabsContent>

      <TabsContent value="coverage" className="m-0 flex-1 p-4 md:p-6">
        <Tabs defaultValue="offense" className="flex min-h-full flex-col gap-0">
          <div className="border-border border-b pb-4">
            <TabsList>
              <TabsTrigger value="offense">Offense</TabsTrigger>
              <TabsTrigger value="defense">Defense</TabsTrigger>
            </TabsList>
          </div>

          <TabsContent value="offense" className="m-0 flex-1 space-y-4 py-4">
            <div>
              <h3 className="font-semibold">Offensive coverage by target type</h3>
              <p className="text-muted-foreground mt-1 text-sm">
                Move count is the number of selected moves that hit that type super
                effectively. STAB count is the number of same-type attack sources in
                the team that do the same.
              </p>
            </div>

            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead>Target Type</TableHead>
                  <TableHead className="text-center">Move Count</TableHead>
                  <TableHead className="text-center">STAB Count</TableHead>
                  <TableHead>Moves</TableHead>
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
                        "No selected move currently covers this type.",
                      )}
                    </TableCell>
                    <TableCell>
                      {renderStabCoverageBadges(
                        row.stabCoverage,
                        "No STAB source currently covers this type.",
                      )}
                    </TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          </TabsContent>

          <TabsContent value="defense" className="m-0 flex-1 space-y-4 py-4">
            <div>
              <h3 className="font-semibold">Defensive coverage by incoming type</h3>
              <p className="text-muted-foreground mt-1 text-sm">
                Weak, resist, and immune counts all use the same rules and the same
                count styling so the comparison is easier to scan.
              </p>
            </div>

            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead>Incoming Type</TableHead>
                  <TableHead className="text-center">Weak</TableHead>
                  <TableHead className="text-center">Resist</TableHead>
                  <TableHead className="text-center">Immune</TableHead>
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
      </TabsContent>

      <TabsContent value="chart" className="m-0 flex-1 space-y-4 p-4 md:p-6">
        <div>
          <h3 className="font-semibold">Type effectiveness chart</h3>
          <p className="text-muted-foreground mt-1 text-sm">
            Green means super effective, red means resisted, and gray means no
            effect. This chart follows the current play generation.
          </p>
        </div>

        <Table className="min-w-[920px]">
          <TableHeader>
            <TableRow>
              <TableHead className="w-28">Atk \ Def</TableHead>
              {analysis.availableTypes.map((defendingType) => (
                <TableHead
                  key={`defender-${defendingType}`}
                  className="px-1 text-center"
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
                      className="px-1 py-2"
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
      </TabsContent>
    </Tabs>
  );
};
