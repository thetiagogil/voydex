import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import Link from "next/link";

export const GameCard = ({ game, genId }: { game: Game; genId: string }) => {
  return (
    <Card className="flex h-full flex-col">
      <CardHeader>
        <div className="flex items-start justify-between">
          <div className="flex-1 space-y-2">
            {/* Game Name */}
            <CardTitle className="text-lg">{game.name}</CardTitle>

            {/* Version & Year */}
            <CardDescription>
              {game.name} ({game.release_year})
            </CardDescription>
          </div>
        </div>
      </CardHeader>

      <CardContent className="flex flex-1 flex-col space-y-4">
        {/* View Game Button */}
        <div className="pt-2">
          <Button asChild className="w-full" variant="outline-secondary">
            <Link href={`/adventures/gen/${genId}/game/${game.slug}`}>
              View Game
            </Link>
          </Button>
        </div>
      </CardContent>
    </Card>
  );
};
