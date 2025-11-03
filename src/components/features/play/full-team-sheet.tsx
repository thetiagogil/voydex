import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import {
  Sheet,
  SheetContent,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet";
import { type Playthrough, type Pokemon } from "@/lib/mock-data";
import { Eye, Users } from "lucide-react";

interface FullTeamSheetProps {
  playthrough: Playthrough;
}

// Mock data for additional Pokémon in the PC
const mockPokemonStorage: Pokemon[] = [
  {
    id: "4",
    nickname: "Squirtle",
    species: "Squirtle",
    level: 15,
    types: ["Water"],
    nature: "Bold",
    ability: "Torrent",
    moves: ["Water Gun", "Tackle", "Tail Whip", "Withdraw"],
  },
  {
    id: "5",
    nickname: "Caterpie",
    species: "Caterpie",
    level: 8,
    types: ["Bug"],
    nature: "Hardy",
    ability: "Shield Dust",
    moves: ["Tackle", "String Shot"],
  },
  {
    id: "6",
    nickname: "Weedle",
    species: "Weedle",
    level: 7,
    types: ["Bug", "Poison"],
    nature: "Adamant",
    ability: "Shield Dust",
    moves: ["Poison Sting", "String Shot"],
  },
  {
    id: "7",
    nickname: "Geodude",
    species: "Geodude",
    level: 18,
    types: ["Rock", "Ground"],
    nature: "Brave",
    ability: "Rock Head",
    moves: ["Rock Throw", "Tackle", "Defense Curl", "Mud Sport"],
  },
  {
    id: "8",
    nickname: "Magikarp",
    species: "Magikarp",
    level: 12,
    types: ["Water"],
    nature: "Jolly",
    ability: "Swift Swim",
    moves: ["Splash", "Tackle", "Flail"],
  },
];

export function FullTeamSheet({ playthrough }: FullTeamSheetProps) {
  const getTypeColor = (type: string) => {
    const colors: Record<string, string> = {
      Fire: "bg-red-500",
      Water: "bg-blue-500",
      Electric: "bg-yellow-500",
      Grass: "bg-green-500",
      Normal: "bg-gray-400",
      Flying: "bg-indigo-400",
      Bug: "bg-green-600",
      Poison: "bg-purple-500",
      Rock: "bg-yellow-600",
      Ground: "bg-yellow-700",
    };
    return colors[type] || "bg-gray-400";
  };

  const allPokemon = [...playthrough.team, ...mockPokemonStorage];

  return (
    <Sheet>
      <SheetTrigger asChild>
        <Button variant="outline" size="sm">
          <Eye className="mr-1 h-4 w-4" />
          Full Team ({allPokemon.length})
        </Button>
      </SheetTrigger>
      <SheetContent className="w-full sm:max-w-2xl">
        <SheetHeader>
          <SheetTitle>Full Team Overview</SheetTitle>
        </SheetHeader>
        <div className="mt-6 space-y-6">
          {/* Active Team */}
          <div>
            <h3 className="mb-3 flex items-center gap-2 text-lg font-semibold">
              <Users className="h-5 w-5" />
              Active Team ({playthrough.team.length}/6)
            </h3>
            <div className="grid gap-3 sm:grid-cols-2">
              {playthrough.team.map((pokemon) => (
                <Card key={pokemon.id} className="border-primary/20">
                  <CardContent className="p-3">
                    <div className="mb-2 flex items-start justify-between">
                      <div>
                        <p className="font-semibold">{pokemon.nickname}</p>
                        <p className="text-muted-foreground text-sm">
                          {pokemon.species}
                        </p>
                      </div>
                      <Badge variant="outline">Lv. {pokemon.level}</Badge>
                    </div>
                    <div className="mb-2 flex gap-1">
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
                        <span className="text-muted-foreground">Ability:</span>{" "}
                        {pokemon.ability}
                      </p>
                    </div>
                  </CardContent>
                </Card>
              ))}
            </div>
          </div>

          {/* PC Storage */}
          <div>
            <h3 className="mb-3 text-lg font-semibold">
              PC Storage ({mockPokemonStorage.length})
            </h3>
            <div className="grid gap-3 sm:grid-cols-2">
              {mockPokemonStorage.map((pokemon) => (
                <Card key={pokemon.id}>
                  <CardContent className="p-3">
                    <div className="mb-2 flex items-start justify-between">
                      <div>
                        <p className="font-semibold">{pokemon.nickname}</p>
                        <p className="text-muted-foreground text-sm">
                          {pokemon.species}
                        </p>
                      </div>
                      <Badge variant="outline">Lv. {pokemon.level}</Badge>
                    </div>
                    <div className="mb-2 flex gap-1">
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
                        <span className="text-muted-foreground">Ability:</span>{" "}
                        {pokemon.ability}
                      </p>
                    </div>
                  </CardContent>
                </Card>
              ))}
            </div>
          </div>
        </div>
      </SheetContent>
    </Sheet>
  );
}
