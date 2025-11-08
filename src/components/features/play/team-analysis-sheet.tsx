import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Progress } from "@/components/ui/progress";
import {
  Sheet,
  SheetContent,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet";
import { type Playthrough } from "@/lib/mock-data";
import { AlertTriangle, Shield, TrendingUp, Zap } from "lucide-react";

interface TeamAnalysisSheetProps {
  playthrough: Playthrough;
}

// Mock type effectiveness data
const typeChart = {
  Fire: {
    weakTo: ["Water", "Rock", "Ground"],
    strongVs: ["Grass", "Bug", "Ice", "Steel"],
  },
  Water: {
    weakTo: ["Electric", "Grass"],
    strongVs: ["Fire", "Ground", "Rock"],
  },
  Electric: { weakTo: ["Ground"], strongVs: ["Water", "Flying"] },
  Grass: {
    weakTo: ["Fire", "Ice", "Poison", "Flying", "Bug"],
    strongVs: ["Water", "Ground", "Rock"],
  },
  Normal: { weakTo: ["Fighting"], strongVs: [] },
  Flying: {
    weakTo: ["Electric", "Ice", "Rock"],
    strongVs: ["Grass", "Fighting", "Bug"],
  },
};

export const TeamAnalysisSheet = ({ playthrough }: TeamAnalysisSheetProps) => {
  // Analyze team composition
  const teamTypes = playthrough.team.flatMap((pokemon) => pokemon.types);
  const typeCount = teamTypes.reduce(
    (acc, type) => {
      acc[type] = (acc[type] || 0) + 1;
      return acc;
    },
    {} as Record<string, number>,
  );

  // Calculate type coverage
  const coveredTypes = new Set();
  playthrough.team.forEach((pokemon) => {
    pokemon.types.forEach((type) => {
      const typeData = typeChart[type as keyof typeof typeChart];
      if (typeData) {
        typeData.strongVs.forEach((strongType) => coveredTypes.add(strongType));
      }
    });
  });

  // Calculate weaknesses
  const teamWeaknesses = new Set();
  playthrough.team.forEach((pokemon) => {
    pokemon.types.forEach((type) => {
      const typeData = typeChart[type as keyof typeof typeChart];
      if (typeData) {
        typeData.weakTo.forEach((weakType) => teamWeaknesses.add(weakType));
      }
    });
  });

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
      Ice: "bg-blue-300",
      Dragon: "bg-purple-600",
      Dark: "bg-gray-800",
      Fairy: "bg-pink-300",
    };
    return colors[type] || "bg-gray-400";
  };

  const coveragePercentage = (coveredTypes.size / 18) * 100; // 18 total types in Gen 1
  const averageLevel =
    playthrough.team.reduce((sum, pokemon) => sum + pokemon.level, 0) /
    playthrough.team.length;

  return (
    <Sheet>
      <SheetTrigger asChild>
        <Button variant="outline" size="sm">
          <Shield className="mr-1 h-4 w-4" />
          Team Analysis
        </Button>
      </SheetTrigger>
      <SheetContent className="w-full sm:max-w-2xl">
        <SheetHeader>
          <SheetTitle>Team Analysis</SheetTitle>
        </SheetHeader>
        <div className="mt-6 space-y-6">
          {/* Team Overview */}
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                <TrendingUp className="h-5 w-5" />
                Team Overview
              </CardTitle>
            </CardHeader>
            <CardContent className="space-y-4">
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <p className="text-muted-foreground text-sm">Team Size</p>
                  <p className="text-2xl font-bold">
                    {playthrough.team.length}/6
                  </p>
                </div>
                <div>
                  <p className="text-muted-foreground text-sm">Average Level</p>
                  <p className="text-2xl font-bold">
                    {Math.round(averageLevel)}
                  </p>
                </div>
              </div>
              <div>
                <div className="mb-2 flex justify-between text-sm">
                  <span>Type Coverage</span>
                  <span>{Math.round(coveragePercentage)}%</span>
                </div>
                <Progress value={coveragePercentage} />
              </div>
            </CardContent>
          </Card>

          {/* Type Distribution */}
          <Card>
            <CardHeader>
              <CardTitle>Type Distribution</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="flex flex-wrap gap-2">
                {Object.entries(typeCount).map(([type, count]) => (
                  <div key={type} className="flex items-center gap-2">
                    <Badge className={`text-white ${getTypeColor(type)}`}>
                      {type}
                    </Badge>
                    <span className="text-sm">×{count}</span>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>

          {/* Offensive Coverage */}
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                <Zap className="h-5 w-5" />
                Offensive Coverage
              </CardTitle>
            </CardHeader>
            <CardContent>
              <p className="text-muted-foreground mb-3 text-sm">
                Types your team can effectively counter:
              </p>
              <div className="flex flex-wrap gap-2">
                {Array.from(coveredTypes).map((type) => (
                  <Badge
                    key={type as string}
                    variant="outline"
                    className="text-xs"
                  >
                    {type as string}
                  </Badge>
                ))}
              </div>
            </CardContent>
          </Card>

          {/* Team Weaknesses */}
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                <AlertTriangle className="h-5 w-5 text-orange-500" />
                Team Weaknesses
              </CardTitle>
            </CardHeader>
            <CardContent>
              <p className="text-muted-foreground mb-3 text-sm">
                Types that can threaten your team:
              </p>
              <div className="flex flex-wrap gap-2">
                {Array.from(teamWeaknesses).map((type) => (
                  <Badge
                    key={type as string}
                    variant="outline"
                    className="border-orange-500 text-xs text-orange-600"
                  >
                    {type as string}
                  </Badge>
                ))}
              </div>
            </CardContent>
          </Card>

          {/* Recommendations */}
          <Card>
            <CardHeader>
              <CardTitle>Recommendations</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="space-y-2 text-sm">
                {playthrough.team.length < 6 && (
                  <p className="text-blue-600">
                    • Consider adding more Pokémon to complete your team
                  </p>
                )}
                {teamWeaknesses.has("Electric") && (
                  <p className="text-orange-600">
                    • Your team is vulnerable to Electric attacks - consider a
                    Ground-type
                  </p>
                )}
                {!coveredTypes.has("Psychic") && (
                  <p className="text-purple-600">
                    • Consider adding coverage for Psychic-types
                  </p>
                )}
                {averageLevel < 25 && (
                  <p className="text-yellow-600">
                    • Your team could benefit from more training
                  </p>
                )}
              </div>
            </CardContent>
          </Card>
        </div>
      </SheetContent>
    </Sheet>
  );
};
