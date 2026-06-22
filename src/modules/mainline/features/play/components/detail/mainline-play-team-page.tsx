import {
  BarChart3,
  ClipboardList,
  Dices,
  History,
  Plus,
  RefreshCcw,
  Shield,
  Sparkles,
  Trash2,
  WandSparkles,
} from "lucide-react";

import type {
  MainlinePlayDetailData,
  MainlinePlayTeamPokemon,
} from "@/modules/mainline/features/play/types";
import {
  getActiveTeam,
  getPokemonDisplayName,
  getPokemonPrimaryTypeSlug,
  getReserveTeam,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import {
  EmptyPanel,
  PokemonTypeBadges,
  TeamCountBadge,
  TeamMemberRow,
  TimelineRows,
} from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { StatusBadge } from "@/shared/components/app/status-badge";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardAction,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Separator } from "@/shared/components/ui/separator";

type MainlinePlayTeamPageProps = {
  data: MainlinePlayDetailData;
};

type DisplayMove = {
  current_pp?: number | null;
  move_name?: string | null;
  name?: string | null;
  pp?: number | null;
  type_name?: string | null;
};

function getMoves(pokemon: MainlinePlayTeamPokemon): DisplayMove[] {
  return Array.isArray(pokemon.moves) ? (pokemon.moves as DisplayMove[]) : [];
}

function EmptyRosterSlot({ index }: { index: number }) {
  return (
    <div className="text-muted-foreground grid grid-cols-[auto_minmax(0,1fr)_auto] items-center gap-3 rounded-lg border border-dashed p-3 text-sm">
      <span className="flex size-7 items-center justify-center rounded-full border border-dashed">
        {index}
      </span>
      <span>Empty slot</span>
      <span>Reserve</span>
    </div>
  );
}

function TeamRoster({ data }: MainlinePlayTeamPageProps) {
  const activeTeam = getActiveTeam(data.team);
  const reserveTeam = getReserveTeam(data.team);
  const selectedPokemon = activeTeam[0] ?? reserveTeam[0] ?? null;
  const emptyReserveSlots = Math.max(6 - reserveTeam.length, 0);

  return (
    <Card>
      <CardHeader>
        <CardTitle>Team</CardTitle>
        <CardDescription className="flex flex-wrap items-center gap-2">
          <TeamCountBadge
            activeCount={activeTeam.length}
            reserveCount={reserveTeam.length}
          />
          {selectedPokemon ? (
            <span>Selected: {getPokemonDisplayName(selectedPokemon)}</span>
          ) : null}
        </CardDescription>
      </CardHeader>
      <CardContent className="flex flex-col gap-5">
        <div className="flex flex-col gap-2">
          <div className="flex items-center justify-between gap-3">
            <h3 className="font-medium">Active Team ({activeTeam.length}/6)</h3>
          </div>
          <div className="flex flex-col gap-2">
            {activeTeam.length ? (
              activeTeam.map((pokemon, index) => (
                <TeamMemberRow
                  key={pokemon.play_pokemon_id}
                  pokemon={pokemon}
                  isSelected={index === 0}
                />
              ))
            ) : (
              <div className="text-muted-foreground rounded-lg border border-dashed p-4 text-sm">
                No active Pokemon yet.
              </div>
            )}
          </div>
        </div>

        <div className="flex flex-col gap-2">
          <div className="flex items-center justify-between gap-3">
            <h3 className="font-medium">
              Reserve Team ({reserveTeam.length}/6)
            </h3>
          </div>
          <div className="flex flex-col gap-2">
            {reserveTeam.map((pokemon) => (
              <TeamMemberRow key={pokemon.play_pokemon_id} pokemon={pokemon} />
            ))}
            {Array.from({ length: emptyReserveSlots }).map((_, index) => (
              <EmptyRosterSlot
                key={index}
                index={reserveTeam.length + index + 1}
              />
            ))}
          </div>
        </div>

        <div className="bg-muted/50 text-muted-foreground flex items-center justify-center gap-2 rounded-lg border p-3 text-sm">
          <RefreshCcw className="size-4" />
          Drag to reorder or move between active and reserve.
        </div>
      </CardContent>
    </Card>
  );
}

function PokemonDetail({
  pokemon,
}: {
  pokemon: MainlinePlayTeamPokemon | null;
}) {
  if (!pokemon) {
    return (
      <EmptyPanel
        title="No Pokemon selected"
        description="Add Pokemon to this play to see team details here."
      />
    );
  }

  const moves = getMoves(pokemon);

  return (
    <Card>
      <CardContent className="flex flex-col gap-5">
        <div className="grid gap-5 lg:grid-cols-[12rem_minmax(0,1fr)]">
          <PokemonPortrait
            alt={getPokemonDisplayName(pokemon)}
            imageUrl={pokemon.display.imageUrl}
            type={getPokemonPrimaryTypeSlug(pokemon)}
            className="mx-auto size-44"
            priority
          />

          <div className="grid gap-5 xl:grid-cols-[minmax(0,1fr)_minmax(0,1fr)]">
            <div className="flex flex-col gap-3">
              <div>
                <div className="flex flex-wrap items-center gap-2">
                  <h2 className="cn-font-heading text-2xl font-semibold">
                    {getPokemonDisplayName(pokemon)}
                  </h2>
                  <Button
                    variant="ghost"
                    size="icon-sm"
                    aria-label="Edit Pokemon"
                  >
                    <WandSparkles />
                  </Button>
                </div>
                <div className="mt-2 flex flex-wrap gap-2">
                  <StatusBadge tone="success">
                    {pokemon.roster_state_name ?? "Team"}
                    {pokemon.slot ? ` - Slot ${pokemon.slot}` : ""}
                  </StatusBadge>
                  <StatusBadge tone="neutral">
                    Lv. {pokemon.level ?? "-"}
                  </StatusBadge>
                </div>
              </div>
              <PokemonTypeBadges pokemon={pokemon} />
              <p className="text-muted-foreground text-sm">
                Held item: {pokemon.held_item_name ?? "None"}
              </p>
            </div>

            <dl className="grid grid-cols-2 gap-3 text-sm">
              <div>
                <dt className="text-muted-foreground">Nature</dt>
                <dd className="font-medium">{pokemon.nature_name ?? "-"}</dd>
              </div>
              <div>
                <dt className="text-muted-foreground">Ability</dt>
                <dd className="font-medium">{pokemon.ability_name ?? "-"}</dd>
              </div>
              <div>
                <dt className="text-muted-foreground">Gender</dt>
                <dd className="font-medium">{pokemon.gender ?? "-"}</dd>
              </div>
              <div>
                <dt className="text-muted-foreground">Shiny</dt>
                <dd className="font-medium">
                  {pokemon.is_shiny ? "Yes" : "No"}
                </dd>
              </div>
              <div>
                <dt className="text-muted-foreground">Met location</dt>
                <dd className="font-medium">
                  {pokemon.met_location_label ?? "-"}
                </dd>
              </div>
              <div>
                <dt className="text-muted-foreground">Ball</dt>
                <dd className="font-medium">{pokemon.ball_item_name ?? "-"}</dd>
              </div>
              <div>
                <dt className="text-muted-foreground">Met level</dt>
                <dd className="font-medium">
                  {pokemon.met_level ? `Lv. ${pokemon.met_level}` : "-"}
                </dd>
              </div>
              <div>
                <dt className="text-muted-foreground">Notes</dt>
                <dd className="line-clamp-2 font-medium">
                  {pokemon.personal_notes ?? "-"}
                </dd>
              </div>
            </dl>
          </div>
        </div>

        <Separator />

        <div className="grid gap-5 lg:grid-cols-[minmax(0,1fr)_16rem]">
          <div>
            <h3 className="mb-3 font-medium">Moveset</h3>
            <div className="flex flex-col gap-2">
              {moves.length ? (
                moves.slice(0, 4).map((move, index) => (
                  <div
                    key={`${move.move_name ?? move.name ?? "move"}-${index}`}
                    className="grid grid-cols-[minmax(0,1fr)_auto] items-center gap-3 rounded-lg border p-3"
                  >
                    <div className="min-w-0">
                      <p className="truncate font-medium">
                        {move.move_name ?? move.name ?? "Move"}
                      </p>
                      <p className="text-muted-foreground text-xs">
                        {move.type_name ?? "Unknown type"}
                      </p>
                    </div>
                    <span className="text-muted-foreground text-sm">
                      {move.current_pp ?? "-"}/{move.pp ?? "-"}
                    </span>
                  </div>
                ))
              ) : (
                <div className="text-muted-foreground rounded-lg border border-dashed p-4 text-sm">
                  No moves logged.
                </div>
              )}
            </div>
          </div>

          <div className="grid content-start gap-2">
            <Button variant="outline" disabled>
              <Sparkles data-icon="inline-start" />
              Evolve
            </Button>
            <Button variant="outline" disabled>
              <Dices data-icon="inline-start" />
              Change form
            </Button>
            <Button variant="outline" disabled>
              <RefreshCcw data-icon="inline-start" />
              Replace
            </Button>
            <Button variant="destructive" disabled>
              <Trash2 data-icon="inline-start" />
              Retire
            </Button>
          </div>
        </div>
      </CardContent>
    </Card>
  );
}

function TeamAnalysisPreview() {
  const items = [
    {
      description: "Balanced bulk with good physical and special walls.",
      icon: <Shield className="text-primary size-7" />,
      label: "Defense",
    },
    {
      description: "Review type coverage before major fights.",
      icon: <BarChart3 className="text-warning size-7" />,
      label: "Coverage",
    },
    {
      description: "Warnings will appear as rules and team data improve.",
      icon: <ClipboardList className="text-destructive size-7" />,
      label: "Warnings",
    },
  ];

  return (
    <Card>
      <CardHeader>
        <CardTitle>Team Analysis</CardTitle>
        <CardAction>
          <Button variant="ghost" size="sm" disabled>
            Open full analysis
          </Button>
        </CardAction>
      </CardHeader>
      <CardContent className="grid gap-3 md:grid-cols-3">
        {items.map((item) => (
          <div key={item.label} className="flex gap-3 rounded-lg border p-3">
            {item.icon}
            <div>
              <p className="font-medium">{item.label}</p>
              <p className="text-muted-foreground text-sm">
                {item.description}
              </p>
            </div>
          </div>
        ))}
      </CardContent>
    </Card>
  );
}

export function MainlinePlayTeamPage({ data }: MainlinePlayTeamPageProps) {
  const activeTeam = getActiveTeam(data.team);
  const reserveTeam = getReserveTeam(data.team);
  const selectedPokemon = activeTeam[0] ?? reserveTeam[0] ?? null;

  return (
    <MainlinePlayShell activeTab="team" data={data}>
      <div className="flex flex-col gap-5">
        <div className="flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
          <div className="flex flex-wrap items-center gap-3">
            <h2 className="cn-font-heading text-2xl font-semibold">Team</h2>
            <TeamCountBadge
              activeCount={activeTeam.length}
              reserveCount={reserveTeam.length}
            />
          </div>
          <div className="flex flex-wrap gap-2">
            <Button disabled>
              <Plus data-icon="inline-start" />
              Add Pokemon
            </Button>
            <Button variant="outline" disabled>
              <ClipboardList data-icon="inline-start" />
              Team Plans
            </Button>
            <Button variant="outline" disabled>
              <BarChart3 data-icon="inline-start" />
              Team Analysis
            </Button>
            <Button variant="outline" disabled>
              <History data-icon="inline-start" />
              Team History
            </Button>
          </div>
        </div>

        <div className="grid gap-5 xl:grid-cols-[minmax(0,0.9fr)_minmax(0,1.1fr)]">
          <TeamRoster data={data} />
          <div className="flex flex-col gap-5">
            <PokemonDetail pokemon={selectedPokemon} />
            <TeamAnalysisPreview />
            <Card>
              <CardHeader>
                <CardTitle>Recent Team Events</CardTitle>
                <CardAction>
                  <Button variant="ghost" size="sm" disabled>
                    View team history
                  </Button>
                </CardAction>
              </CardHeader>
              <CardContent>
                <TimelineRows events={data.timelineEvents} limit={3} />
              </CardContent>
            </Card>
          </div>
        </div>
      </div>
    </MainlinePlayShell>
  );
}
