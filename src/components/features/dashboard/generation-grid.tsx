import { Badge } from "@/components/ui/badge";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { type GenerationData } from "@/lib/mock-data/types";
import Link from "next/link";

interface GenerationGridProps {
  generations: GenerationData[];
}

export function GenerationGrid({ generations }: GenerationGridProps) {
  return (
    <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
      {generations.map((gen) => (
        <Link key={gen.slug} href={`/gen/${gen.slug}`}>
          <Card className="h-full transition-colors hover:bg-muted/50 cursor-pointer">
            <CardHeader>
              <div className="flex items-start justify-between">
                <div className="space-y-1">
                  <CardTitle className="text-xl">{gen.name}</CardTitle>
                  <CardDescription className="font-medium">
                    {gen.region} • {gen.years}
                  </CardDescription>
                </div>
                <Badge variant="secondary">{gen.pokemonCount} Pokémon</Badge>
              </div>
            </CardHeader>

            <CardContent>
              <div className="space-y-4">
                <p className="text-sm text-muted-foreground">
                  {gen.description}
                </p>

                <div className="space-y-2">
                  <p className="text-sm font-medium">Available Games:</p>
                  <div className="flex flex-wrap gap-1">
                    {gen.games.map((game) => (
                      <Badge
                        key={game.slug}
                        variant="outline"
                        className="text-xs"
                      >
                        {game.name}
                      </Badge>
                    ))}
                  </div>
                </div>
              </div>
            </CardContent>
          </Card>
        </Link>
      ))}
    </div>
  );
}
