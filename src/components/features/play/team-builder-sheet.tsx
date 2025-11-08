import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";

import {
  Sheet,
  SheetContent,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet";
import { type Playthrough } from "@/lib/mock-data";
import { Edit3, Plus, Search, Star } from "lucide-react";

interface TeamBuilderSheetProps {
  playthrough: Playthrough;
}

// Mock available Pokémon for team building
const availablePokemon = [
  {
    id: "bulbasaur",
    name: "Bulbasaur",
    types: ["Grass", "Poison"],
    baseStats: {
      hp: 45,
      attack: 49,
      defense: 49,
      spAttack: 65,
      spDefense: 65,
      speed: 45,
    },
    abilities: ["Overgrow", "Chlorophyll"],
    recommended: true,
  },
  {
    id: "charmander",
    name: "Charmander",
    types: ["Fire"],
    baseStats: {
      hp: 39,
      attack: 52,
      defense: 43,
      spAttack: 60,
      spDefense: 50,
      speed: 65,
    },
    abilities: ["Blaze", "Solar Power"],
    recommended: false,
  },
  {
    id: "squirtle",
    name: "Squirtle",
    types: ["Water"],
    baseStats: {
      hp: 44,
      attack: 48,
      defense: 65,
      spAttack: 50,
      spDefense: 64,
      speed: 43,
    },
    abilities: ["Torrent", "Rain Dish"],
    recommended: true,
  },
  {
    id: "abra",
    name: "Abra",
    types: ["Psychic"],
    baseStats: {
      hp: 25,
      attack: 20,
      defense: 15,
      spAttack: 105,
      spDefense: 55,
      speed: 90,
    },
    abilities: ["Synchronize", "Inner Focus", "Magic Guard"],
    recommended: true,
  },
  {
    id: "machop",
    name: "Machop",
    types: ["Fighting"],
    baseStats: {
      hp: 70,
      attack: 80,
      defense: 50,
      spAttack: 35,
      spDefense: 35,
      speed: 35,
    },
    abilities: ["Guts", "No Guard", "Steadfast"],
    recommended: false,
  },
  {
    id: "gastly",
    name: "Gastly",
    types: ["Ghost", "Poison"],
    baseStats: {
      hp: 30,
      attack: 35,
      defense: 30,
      spAttack: 100,
      spDefense: 35,
      speed: 80,
    },
    abilities: ["Levitate"],
    recommended: true,
  },
];

export const TeamBuilderSheet = ({ playthrough }: TeamBuilderSheetProps) => {
  const getTypeColor = (type: string) => {
    const colors: Record<string, string> = {
      Fire: "bg-red-500",
      Water: "bg-blue-500",
      Electric: "bg-yellow-500",
      Grass: "bg-green-500",
      Normal: "bg-gray-400",
      Flying: "bg-indigo-400",
      Fighting: "bg-red-700",
      Poison: "bg-purple-500",
      Ground: "bg-yellow-700",
      Rock: "bg-yellow-600",
      Bug: "bg-green-600",
      Ghost: "bg-purple-700",
      Steel: "bg-gray-500",
      Psychic: "bg-pink-500",
    };
    return colors[type] || "bg-gray-400";
  };

  const getStatTotal = (stats: Record<string, number>) => {
    return Object.values(stats).reduce(
      (total: number, stat) => total + stat,
      0,
    );
  };

  return (
    <Sheet>
      <SheetTrigger asChild>
        <Button size="sm">
          <Edit3 className="mr-1 h-4 w-4" />
          Team Builder
        </Button>
      </SheetTrigger>
      <SheetContent className="w-full sm:max-w-4xl">
        <SheetHeader>
          <SheetTitle>Team Builder</SheetTitle>
        </SheetHeader>
        <div className="mt-6 space-y-6">
          {/* Current Team */}
          <Card>
            <CardHeader>
              <CardTitle>Current Team ({playthrough.team.length}/6)</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
                {Array(6)
                  .fill(null)
                  .map((_, index) => {
                    const pokemon = playthrough.team[index];
                    return (
                      <Card
                        key={index}
                        className={
                          !pokemon ? "bg-muted/20 border-2 border-dashed" : ""
                        }
                      >
                        <CardContent className="p-3">
                          {pokemon ? (
                            <div className="space-y-2">
                              <div className="flex items-start justify-between">
                                <div>
                                  <p className="font-semibold">
                                    {pokemon.nickname}
                                  </p>
                                  <p className="text-muted-foreground text-sm">
                                    {pokemon.species}
                                  </p>
                                </div>
                                <Badge variant="outline">
                                  Lv. {pokemon.level}
                                </Badge>
                              </div>
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
                            </div>
                          ) : (
                            <div className="flex h-20 flex-col items-center justify-center text-center">
                              <Plus className="text-muted-foreground mb-1 h-6 w-6" />
                              <p className="text-muted-foreground text-xs">
                                Empty Slot
                              </p>
                            </div>
                          )}
                        </CardContent>
                      </Card>
                    );
                  })}
              </div>
            </CardContent>
          </Card>

          {/* Search */}
          <Card>
            <CardHeader>
              <CardTitle>Add Pokémon</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="space-y-4">
                <div className="relative">
                  <Search className="text-muted-foreground absolute top-3 left-3 h-4 w-4" />
                  <Input
                    placeholder="Search Pokémon by name or type..."
                    className="pl-10"
                  />
                </div>
              </div>
            </CardContent>
          </Card>

          {/* Available Pokémon */}
          <Card>
            <CardHeader>
              <CardTitle>Available Pokémon</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="grid gap-3 sm:grid-cols-2">
                {availablePokemon.map((pokemon) => (
                  <Card key={pokemon.id} className="relative">
                    {pokemon.recommended && (
                      <div className="absolute top-2 right-2">
                        <Star className="h-4 w-4 fill-yellow-500 text-yellow-500" />
                      </div>
                    )}
                    <CardContent className="p-4">
                      <div className="space-y-3">
                        <div className="flex items-start justify-between">
                          <div>
                            <p className="font-semibold">{pokemon.name}</p>
                            <p className="text-muted-foreground text-sm">
                              BST: {getStatTotal(pokemon.baseStats)}
                            </p>
                          </div>
                          <Button size="sm" variant="outline">
                            <Plus className="h-3 w-3" />
                          </Button>
                        </div>

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
                          <p className="text-muted-foreground">Abilities:</p>
                          <div className="flex flex-wrap gap-1">
                            {pokemon.abilities.map((ability) => (
                              <Badge
                                key={ability}
                                variant="outline"
                                className="text-xs"
                              >
                                {ability}
                              </Badge>
                            ))}
                          </div>
                        </div>

                        <div className="grid grid-cols-3 gap-2 text-xs">
                          <div className="text-center">
                            <p className="text-muted-foreground">HP</p>
                            <p className="font-medium">
                              {pokemon.baseStats.hp}
                            </p>
                          </div>
                          <div className="text-center">
                            <p className="text-muted-foreground">ATK</p>
                            <p className="font-medium">
                              {pokemon.baseStats.attack}
                            </p>
                          </div>
                          <div className="text-center">
                            <p className="text-muted-foreground">DEF</p>
                            <p className="font-medium">
                              {pokemon.baseStats.defense}
                            </p>
                          </div>
                          <div className="text-center">
                            <p className="text-muted-foreground">SPA</p>
                            <p className="font-medium">
                              {pokemon.baseStats.spAttack}
                            </p>
                          </div>
                          <div className="text-center">
                            <p className="text-muted-foreground">SPD</p>
                            <p className="font-medium">
                              {pokemon.baseStats.spDefense}
                            </p>
                          </div>
                          <div className="text-center">
                            <p className="text-muted-foreground">SPE</p>
                            <p className="font-medium">
                              {pokemon.baseStats.speed}
                            </p>
                          </div>
                        </div>
                      </div>
                    </CardContent>
                  </Card>
                ))}
              </div>
            </CardContent>
          </Card>
        </div>
      </SheetContent>
    </Sheet>
  );
};
