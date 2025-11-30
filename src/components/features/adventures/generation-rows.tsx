import { CircularProgress } from "@/components/shared/circular-progress";
import { Badge } from "@/components/ui/badge";
import { Card, CardContent } from "@/components/ui/card";
import { GenerationPlayData } from "@/lib/mock-data";
import { cn } from "@/lib/utils/cn";
import Link from "next/link";

interface GenerationRowsProps {
  generations: GenerationPlayData[];
}

export const GenerationRows = ({ generations }: GenerationRowsProps) => {
  return (
    <div className="flex flex-col gap-4">
      {generations.map((gen) => (
        <Link
          key={gen.genSlug}
          href={gen.isEnabled ? `/adventures/gen/${gen.genSlug}` : "#"}
          className={cn(!gen.isEnabled && "pointer-events-none")}
        >
          <Card
            className={cn(
              "transition-colors",
              gen.isEnabled
                ? "hover:bg-primary/10 hover:border-primary/50 cursor-pointer"
                : "opacity-50",
            )}
          >
            <CardContent>
              <div className="flex items-center gap-6">
                {/* Metadata Section (Left) */}
                <div className="flex-1 space-y-1">
                  <div className="flex items-center gap-3">
                    <h3 className="text-lg font-semibold">{gen.genName}</h3>
                    <Badge variant="outline-primary" className="text-xs">
                      {gen.pokemonCount} Pokémon
                    </Badge>
                    <Badge variant="outline-primary" className="text-xs">
                      {gen.gamesCount} Games
                    </Badge>
                  </div>
                  <p className="text-muted-foreground text-sm">
                    {gen.region} • {gen.years}
                  </p>
                </div>

                {/* Play Data Section (Right) */}
                <div className="flex items-center">
                  {gen.isEnabled ? (
                    <>
                      <div className="min-w-[80px] text-center">
                        <p className="text-2xl font-bold">
                          {gen.playthroughsCount}
                        </p>
                        <p className="text-muted-foreground text-xs">
                          Playthroughs
                        </p>
                      </div>
                      <div className="min-w-[80px] text-center">
                        <p className="text-primary text-2xl font-bold">
                          {gen.activePlays}
                        </p>
                        <p className="text-muted-foreground text-xs">Active</p>
                      </div>
                      <div className="flex min-w-[80px] flex-col items-center gap-1">
                        <CircularProgress
                          value={gen.averageCompletion}
                          size={80}
                          strokeWidth={4}
                          showLabel
                          labelClassName="text-xs"
                          renderLabel={(p) => `${p}%`}
                        />
                      </div>
                    </>
                  ) : (
                    <div className="text-muted-foreground px-8 text-sm italic">
                      Coming soon...
                    </div>
                  )}
                </div>
              </div>
            </CardContent>
          </Card>
        </Link>
      ))}
    </div>
  );
};
