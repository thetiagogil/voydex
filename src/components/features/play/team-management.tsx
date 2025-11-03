import { Badge } from "@/components/ui/badge";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { type Playthrough } from "@/lib/mock-data/types";
import { Plus, Users } from "lucide-react";
import { FullTeamSheet } from "./full-team-sheet";
import { TeamAnalysisSheet } from "./team-analysis-sheet";
import { TeamBuilderSheet } from "./team-builder-sheet";

interface TeamManagementProps {
  playthrough: Playthrough;
}

export function TeamManagement({ playthrough }: TeamManagementProps) {
  const getTypeColor = (type: string) => {
    const colors: Record<string, string> = {
      Fire: "bg-red-500",
      Water: "bg-blue-500",
      Electric: "bg-yellow-500",
      Grass: "bg-green-500",
      Normal: "bg-gray-400",
      Flying: "bg-indigo-400",
    };
    return colors[type] || "bg-gray-400";
  };

  // Create empty slots for team display (always show 6 slots)
  const teamSlots = Array(6)
    .fill(null)
    .map((_, index) => playthrough.team[index] || null);

  return (
    <Card>
      <CardHeader>
        <div className="flex items-center justify-between">
          <CardTitle className="flex items-center gap-2">
            <Users className="h-5 w-5" />
            Active Team ({playthrough.team.length}/6)
          </CardTitle>
          <div className="flex gap-2">
            <FullTeamSheet playthrough={playthrough} />
            <TeamAnalysisSheet playthrough={playthrough} />
            <TeamBuilderSheet playthrough={playthrough} />
          </div>
        </div>
      </CardHeader>
      <CardContent>
        <div className="grid gap-4 md:grid-cols-3">
          {teamSlots.map((pokemon, index) => (
            <Card
              key={index}
              className={`transition-colors ${!pokemon ? "bg-muted/20 border-2 border-dashed" : ""}`}
            >
              <CardContent className="p-4">
                {pokemon ? (
                  <div className="space-y-3">
                    <div className="flex items-start justify-between">
                      <div className="space-y-1">
                        <p className="font-semibold">{pokemon.nickname}</p>
                        <p className="text-muted-foreground text-sm">
                          {pokemon.species}
                        </p>
                      </div>
                      <Badge variant="outline">Lv. {pokemon.level}</Badge>
                    </div>

                    <div className="space-y-2">
                      <div className="flex gap-1">
                        {pokemon.types.map((type) => (
                          <Badge
                            key={type}
                            className={`text-xs text-white ${getTypeColor(type)}`}
                          >
                            {type}
                          </Badge>
                        ))}
                      </div>

                      <div className="space-y-1 text-xs">
                        <p>
                          <span className="text-muted-foreground">Nature:</span>{" "}
                          {pokemon.nature}
                        </p>
                        <p>
                          <span className="text-muted-foreground">
                            Ability:
                          </span>{" "}
                          {pokemon.ability}
                        </p>
                      </div>

                      <div className="space-y-1">
                        <p className="text-muted-foreground text-xs">Moves:</p>
                        <div className="flex flex-wrap gap-1">
                          {pokemon.moves.map((move) => (
                            <Badge
                              key={move}
                              variant="outline"
                              className="text-xs"
                            >
                              {move}
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
}
