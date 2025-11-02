import { PageLayout } from "@/components/layout/page-layout";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { generationData } from "@/lib/mock-data";
import Link from "next/link";
import { notFound } from "next/navigation";

interface GenerationPageProps {
  params: Promise<{
    genSlug: string;
  }>;
}

export default async function GenerationPage({ params }: GenerationPageProps) {
  const { genSlug } = await params;

  const generation = generationData[genSlug];

  if (!generation) {
    notFound();
  }

  return (
    <PageLayout>
      <div className="space-y-6">
        {/* Generation Header */}
        <div className="space-y-4">
          <div className="flex items-center gap-3">
            <h1 className="text-3xl font-bold">{generation.name}</h1>
            <Badge variant="secondary" className="text-sm">
              {generation.pokemonCount} Pokémon
            </Badge>
          </div>

          <div className="space-y-2">
            <p className="text-lg text-muted-foreground">
              {generation.region} Region • {generation.years}
            </p>
            <p className="text-muted-foreground max-w-2xl">
              {generation.description}
            </p>
          </div>
        </div>

        {/* Games Grid */}
        <div className="space-y-4">
          <h2 className="text-2xl font-semibold">Available Games</h2>

          <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
            {generation.games.map((game) => (
              <Card key={game.slug} className="h-full">
                <CardHeader>
                  <div className="flex items-start justify-between">
                    <div className="space-y-2">
                      <div className={`w-4 h-4 rounded-full ${game.color}`} />
                      <CardTitle className="text-lg">{game.name}</CardTitle>
                      <CardDescription>
                        {game.version} ({game.year})
                      </CardDescription>
                    </div>
                  </div>
                </CardHeader>

                <CardContent className="space-y-4">
                  <p className="text-sm text-muted-foreground">
                    {game.description}
                  </p>

                  <div className="space-y-2">
                    <p className="text-sm font-medium">Features:</p>
                    <div className="flex flex-wrap gap-1">
                      {game.features.map((feature) => (
                        <Badge
                          key={feature}
                          variant="outline"
                          className="text-xs"
                        >
                          {feature}
                        </Badge>
                      ))}
                    </div>
                  </div>

                  <div className="pt-2">
                    <Button asChild className="w-full">
                      <Link
                        href={`/adventures/gen/${generation.slug}/game/${game.slug}`}
                      >
                        View Game
                      </Link>
                    </Button>
                  </div>
                </CardContent>
              </Card>
            ))}
          </div>
        </div>
      </div>
    </PageLayout>
  );
}
