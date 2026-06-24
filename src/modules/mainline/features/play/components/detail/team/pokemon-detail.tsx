import type { MainlinePlayTeamPokemon } from "@/modules/mainline/features/play/types";
import {
  getPokemonDisplayName,
  getPokemonPrimaryTypeSlug,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { getMoves } from "@/modules/mainline/features/play/components/detail/team/team-utils";
import {
  EmptyPanel,
  PokemonTypeBadges,
} from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { StatusBadge } from "@/shared/components/status-badge";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Card, CardContent } from "@/shared/components/ui/card";
import { Separator } from "@/shared/components/ui/separator";

type PokemonDetailProps = {
  pokemon: MainlinePlayTeamPokemon | null;
};

export const PokemonDetail = ({ pokemon }: PokemonDetailProps) => {
  if (!pokemon) {
    return (
      <EmptyPanel
        title="No roster entries yet"
        description="Team details appear here when this play has roster entries."
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
                  <h2 className="text-2xl font-semibold tracking-normal">
                    {getPokemonDisplayName(pokemon)}
                  </h2>
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
      </CardContent>
    </Card>
  );
};
