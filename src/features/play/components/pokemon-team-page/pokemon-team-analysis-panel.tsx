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
import { TYPE_COLOR_VARIANTS } from "@/shared/constants/color-variants";
import type { PokemonType } from "@/shared/constants/reference";
import { useMemo } from "react";
import type { PlayPokemon } from "../../types";
import {
  buildPokemonTeamAnalysis,
  type PokemonTeamCoverageMove,
  type PokemonTeamCoverageStab,
} from "../../utils/pokemon-team-analysis";
import {
  getPlayPokemonDisplayName,
  getPlayPokemonTypeKeys,
} from "../../utils/pokemon-team-display";
import { getTypeEffectiveness } from "../../utils/type-effectiveness";

type PokemonTeamAnalysisPanelProps = {
  pokemon: PlayPokemon[];
  generationId: number;
  variant?: "full" | "summary";
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
      ? "border-success/30 bg-success/12 text-success"
      : tone === "warning"
        ? "border-warning/30 bg-warning/12 text-warning"
        : tone === "danger"
          ? "border-destructive/30 bg-destructive/12 text-destructive"
          : "border-border bg-muted/20 text-foreground";

  return (
    <Badge
      variant="outline"
      className={cn("min-w-9 justify-center", toneClassName)}
    >
      {value}
    </Badge>
  );
};

const PokemonSourceBadge = ({
  pokemon,
  count,
}: {
  pokemon: PlayPokemon;
  count?: number;
}) => {
  const primaryType = getPlayPokemonTypeKeys(pokemon)[0] ?? "normal";
  const colors = TYPE_COLOR_VARIANTS[primaryType];

  return (
    <Badge
      variant="outline"
      className={cn("gap-1.5", colors.bg, colors.border, colors.text)}
    >
      <TypeDisplay type={primaryType} iconOnly size="sm" />
      <span>{getPlayPokemonDisplayName(pokemon)}</span>
      {typeof count === "number" ? <span>({count})</span> : null}
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
    return (
      <span className="text-muted-foreground text-sm">{emptyMessage}</span>
    );
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
    return (
      <span className="text-muted-foreground text-sm">{emptyMessage}</span>
    );
  }

  const coverageByPokemon = new Map<
    string,
    { pokemon: PlayPokemon; count: number }
  >();

  for (const entry of coverage) {
    const current = coverageByPokemon.get(entry.pokemon.id);

    if (current) {
      current.count += 1;
      continue;
    }

    coverageByPokemon.set(entry.pokemon.id, {
      pokemon: entry.pokemon,
      count: 1,
    });
  }

  const entries = Array.from(coverageByPokemon.values());

  return (
    <div className="flex flex-wrap gap-2">
      {entries.slice(0, 3).map((entry) => (
        <PokemonSourceBadge
          key={entry.pokemon.id}
          pokemon={entry.pokemon}
          count={entry.count}
        />
      ))}
      {entries.length > 3 ? (
        <Badge variant="secondary">+{entries.length - 3} more</Badge>
      ) : null}
    </div>
  );
};

const renderStabCoverageBadges = (
  coverage: PokemonTeamCoverageStab[],
  emptyMessage: string,
) => {
  if (coverage.length === 0) {
    return (
      <span className="text-muted-foreground text-sm">{emptyMessage}</span>
    );
  }

  return (
    <div className="flex flex-wrap gap-2">
      {coverage.slice(0, 3).map((entry) => (
        <PokemonSourceBadge key={entry.pokemon.id} pokemon={entry.pokemon} />
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
    return (
      <span className="text-muted-foreground text-sm">{emptyMessage}</span>
    );
  }

  return (
    <div className="flex flex-wrap gap-2">
      {pokemon.slice(0, 3).map(({ pokemon: member }) => (
        <PokemonSourceBadge key={member.id} pokemon={member} />
      ))}
      {pokemon.length > 3 ? (
        <Badge variant="secondary">+{pokemon.length - 3} more</Badge>
      ) : null}
    </div>
  );
};

const multiplierCellClassName = (multiplier: number) => {
  if (multiplier >= 4) {
    return "border-success/35 bg-success/18 text-success";
  }

  if (multiplier > 1) {
    return "border-success/30 bg-success/12 text-success";
  }

  if (multiplier === 0) {
    return "border-immune/30 bg-immune/12 text-immune";
  }

  if (multiplier <= 0.25) {
    return "border-destructive/35 bg-destructive/18 text-destructive";
  }

  if (multiplier < 1) {
    return "border-destructive/30 bg-destructive/12 text-destructive";
  }

  return "border-border bg-muted/20 text-muted-foreground";
};

export const PokemonTeamAnalysisPanel = ({
  pokemon,
  generationId,
  variant = "full",
}: PokemonTeamAnalysisPanelProps) => {
  const analysis = useMemo(
    () => buildPokemonTeamAnalysis(pokemon, generationId),
    [generationId, pokemon],
  );

  const isSummary = variant === "summary";

  if (pokemon.length === 0) {
    return (
      <div className="flex min-h-[560px] items-center justify-center p-6 text-center">
        <p className="text-muted-foreground max-w-md text-sm">
          Add Pokemon to this view to see coverage and weaknesses.
        </p>
      </div>
    );
  }

  return (
    <Tabs defaultValue="overview" className="flex min-h-[560px] flex-col gap-0">
      <div className="border-border flex items-center justify-center border-b py-3">
        <TabsList>
          <TabsTrigger value="overview">Overview</TabsTrigger>
          <TabsTrigger value="coverage">Coverage</TabsTrigger>
          {!isSummary ? (
            <TabsTrigger value="chart">Type Chart</TabsTrigger>
          ) : null}
        </TabsList>
      </div>

      <TabsContent value="overview" className="m-0 flex-1 space-y-6 p-4 md:p-6">
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
              Defending types hit super effectively by at least one selected
              move.
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
            <p className="text-2xl font-bold">
              {analysis.offensiveGaps.length}
            </p>
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
              <h3 className="font-semibold">Offensive coverage</h3>
              <p className="text-muted-foreground mt-1 text-sm">
                Move Count is how many selected moves hit that type super
                effectively. STAB Count is how many Pokemon do the same with one
                of their own types.
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
                        tone={
                          row.moveCoverage.length > 0 ? "positive" : "neutral"
                        }
                      />
                    </TableCell>
                    <TableCell className="text-center">
                      <CountBadge
                        value={row.stabCoverage.length}
                        tone={
                          row.stabCoverage.length > 0 ? "warning" : "neutral"
                        }
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
                These counts show how many Pokemon are weak, resistant, or
                immune to each incoming type.
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
                        tone={
                          row.resistPokemon.length > 0 ? "positive" : "neutral"
                        }
                      />
                    </TableCell>
                    <TableCell className="text-center">
                      <CountBadge
                        value={row.immunePokemon.length}
                        tone={
                          row.immunePokemon.length > 0 ? "warning" : "neutral"
                        }
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

      {!isSummary ? (
        <TabsContent value="chart" className="m-0 flex-1 space-y-4 p-4 md:p-6">
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
        </TabsContent>
      ) : null}
    </Tabs>
  );
};
