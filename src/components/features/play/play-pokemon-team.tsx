import { Badge } from "@/components/ui/badge";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { getTypeColor } from "@/lib/utils/common";
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
              className={`transition-colors ${!pokemon ? "bg-muted/20 border-1 border-dashed" : ""}`}
            >
              <CardContent className="p-4">
                {pokemon ? (
                  <div className="space-y-3">
                    <div className="flex items-start justify-between">
                      <div className="space-y-1">
                        <p className="font-semibold">{pokemon.nickname}</p>
                        <p className="text-muted-foreground text-sm">
                          {pokemon.species.name}
                        </p>
                      </div>
                      <Badge variant="outline">Lv. {pokemon.level}</Badge>
                    </div>

                    <div className="space-y-2">
                      <div className="flex gap-1">
                        {pokemon.types.map((type) => (
                          <Badge
                            key={type.id}
                            className={`text-xs text-white ${getTypeColor(type.slug as Type)}`}
                          >
                            {type.name}
                          </Badge>
                        ))}
                      </div>

                      <div className="space-y-1 text-xs">
                        <p>
                          <span className="text-muted-foreground">Nature:</span>{" "}
                          {pokemon.nature.name}
                        </p>
                        <p>
                          <span className="text-muted-foreground">
                            Ability:
                          </span>{" "}
                          {pokemon.ability?.name}
                        </p>
                      </div>

                      <div className="space-y-1">
                        <p className="text-muted-foreground text-xs">Moves:</p>
                        <div className="flex flex-wrap gap-1">
                          {pokemon.moves.map((move) => (
                            <Badge
                              key={move.id}
                              variant="outline"
                              className="text-xs"
                            >
                              {move.name}
                            </Badge>
                          ))}
                        </div>
                      </div>
                    </div>
                  </div>
                ) : (
                  <div className="flex h-32 flex-col items-center justify-center text-center">
                    <Plus className="text-muted-foreground mb-2 h-8 w-8" />
                    <p className="text-muted-foreground text-sm">Empty Slot</p>
                    <p className="text-muted-foreground text-xs">
                      Click to add Pokémon
                    </p>
                  </div>
                )}
              </CardContent>
            </Card>
          ))}
        </div>
      </CardContent>
    </Card>
  );
};
