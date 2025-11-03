import { CircularProgress } from "@/components/shared/circular-progress";
import { Badge } from "@/components/ui/badge";
import { Card, CardContent } from "@/components/ui/card";
import { GenerationPlayData } from "@/lib/mock-data";
import { cn } from "@/lib/utils/cn";
import Link from "next/link";

interface GenerationCardsProps {
  generations: GenerationPlayData[];
}

export const GenerationCards = ({ generations }: GenerationCardsProps) => {
  return (
    <div className="grid gap-4 md:grid-cols-2">
      {generations.map((gen) => (
        <Link
          key={gen.genSlug}
          href={gen.isEnabled ? `/adventures/gen/${gen.genSlug}` : "#"}
          className={cn(!gen.isEnabled && "pointer-events-none")}
        >
          <Card
            className={cn(
              "h-full transition-colors",
              gen.isEnabled
                ? "hover:bg-primary/10 hover:border-primary/50 cursor-pointer"
                : "opacity-50",
            )}
          >
            <CardContent className="space-y-6">
              {/* Metadata */}
              <div>
                <div className="flex items-center justify-between gap-3">
                  <h3 className="text-lg font-semibold">{gen.genName}</h3>
                  <div className="flex gap-2">
                    <Badge variant="outline">{gen.pokemonCount} Pokémon</Badge>
                    <Badge variant="outline" className="text-xs">
                      {gen.gamesCount} Games
                    </Badge>
                  </div>
                </div>
                <p className="text-muted-foreground text-sm">
                  {gen.region} • {gen.years}
                </p>
              </div>

              {/* Play Data */}
              {gen.isEnabled && gen.playthroughsCount > 0 && (
                <div className="space-y-4 pt-4">
                  <div className="flex items-center justify-between">
                    <div className="space-y-2 text-sm">
                      <div className="flex justify-between gap-8">
                        <span className="text-muted-foreground">
                          Playthroughs
                        </span>
                        <span className="font-medium">
                          {gen.playthroughsCount}
                        </span>
                      </div>
                      <div className="flex justify-between gap-8">
                        <span className="text-muted-foreground">Active</span>
                        <span className="text-primary font-medium">
                          {gen.activePlays}
                        </span>
                      </div>
                    </div>
                    <div className="flex flex-col items-center gap-1">
                      <CircularProgress
                        value={gen.averageCompletion}
                        size={80}
                        strokeWidth={4}
                        showLabel
                        labelClassName="text-xs"
                        renderLabel={(p) => `${p}%`}
                      />
                    </div>
                  </div>
                </div>
              )}

              {!gen.isEnabled && (
                <div className="border-t pt-3">
                  <p className="text-muted-foreground text-sm italic">
                    Coming soon...
                  </p>
                </div>
              )}
            </CardContent>
          </Card>
        </Link>
      ))}
    </div>
  );
};
