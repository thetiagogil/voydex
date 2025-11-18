import { TypeBadge } from "@/components/shared/type-badge";
import { Badge } from "@/components/ui/badge";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/components/ui/empty";
import { Plus, Users } from "lucide-react";

interface PlayPokemonTeamProps {
  playId: string;
  pokemonTeam?: PlayPokemonTeam[];
}

export const PlayPokemonTeam = ({
  playId,
  pokemonTeam,
}: PlayPokemonTeamProps) => {
  const team: PlayPokemonTeam[] = pokemonTeam || [];

  // Create empty slots for team display (always show 6 slots)
  const pokemonTeamSlots = Array(6)
    .fill(null)
    .map((_, index) => team[index] || null);

  return (
    <Card>
      <CardHeader>
        <div className="flex items-center justify-between">
          <CardTitle className="flex items-center gap-2">
            <Users className="h-5 w-5" />
            Active Team ({team.length}/6)
          </CardTitle>
          {/* <div className="flex gap-2">
            <FullTeamSheet playId={playId} />
            <TeamAnalysisSheet playId={playId} />
            <TeamBuilderSheet playId={playId} />
          </div> */}
        </div>
      </CardHeader>

      <CardContent>
        <div className="grid gap-4 md:grid-cols-3">
          {pokemonTeamSlots.map((pokemon, index) => (
            <Card
              key={index}
              className={`transition-colors ${!pokemon ? "border-1 border-dashed" : ""}`}
            >
              <CardContent>
                {pokemon ? (
                  <div className="space-y-4">
                    <div className="flex gap-4">
                      <div className="w-50">
                        {/* Pokemon sprite */}
                        {pokemon.form?.sprite_url ? (
                          <img
                            src={pokemon.form.sprite_url}
                            alt={pokemon.species.name}
                            className="h-32 object-contain"
                          />
                        ) : (
                          <div className="bg-muted border-accent flex h-32 w-32 items-center justify-center rounded-full border">
                            <span className="text-muted-foreground text-xs"></span>
                          </div>
                        )}
                      </div>

                      <div className="flex w-50 flex-col gap-2">
                        {/* Pokemon name */}
                        <div className="flex w-full items-start justify-between">
                          <div>
                            <p className="font-semibold">
                              {pokemon.species.name}
                            </p>
                            <p className="text-muted-foreground text-sm">
                              {pokemon.nickname}
                            </p>
                          </div>
                          <Badge variant="outline-secondary">
                            Lv. {pokemon.level}
                          </Badge>
                        </div>

                        {/* Pokemon types */}
                        <div className="flex gap-1">
                          {pokemon.types.map((type) => (
                            <div key={type.id}>
                              <TypeBadge type={type.name as Type} />
                            </div>
                          ))}
                        </div>

                        {/* Pokemon nature and ability */}
                        <div className="space-y-1 text-xs">
                          <p>
                            <span className="text-muted-foreground">
                              Nature:
                            </span>{" "}
                            {pokemon.nature?.name || (
                              <i className="text-muted-foreground">None</i>
                            )}
                          </p>

                          <p>
                            <span className="text-muted-foreground">
                              Ability:
                            </span>{" "}
                            {pokemon.ability?.name || (
                              <i className="text-muted-foreground">None</i>
                            )}
                          </p>
                        </div>
                      </div>
                    </div>

                    <div>
                      {/* Pokemon moves - always render 4 slots, filling with <Empty /> when missing */}
                      <div className="grid grid-cols-2 gap-2">
                        {Array.from({ length: 4 }).map((_, i) => {
                          const move = pokemon.moves[i];
                          if (move) {
                            return (
                              <Badge
                                key={i}
                                variant="outline-secondary"
                                className="w-full py-2 text-xs"
                              >
                                {move.name}
                              </Badge>
                            );
                          }

                          return (
                            <Badge
                              key={i}
                              variant="outline-secondary"
                              className="w-full border-dashed py-2 opacity-50"
                            />
                          );
                        })}
                      </div>
                    </div>
                  </div>
                ) : (
                  <Empty className="opacity-50">
                    <EmptyHeader>
                      <EmptyMedia variant="icon">
                        <Plus />
                      </EmptyMedia>
                      <EmptyTitle>Empty Slot</EmptyTitle>
                      <EmptyDescription>Click to add Pokémon</EmptyDescription>
                    </EmptyHeader>
                  </Empty>
                )}
              </CardContent>
            </Card>
          ))}
        </div>
      </CardContent>
    </Card>
  );
};
