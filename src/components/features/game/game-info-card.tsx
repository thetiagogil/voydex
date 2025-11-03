import { Badge } from "@/components/ui/badge";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { type GameInfo } from "@/lib/mock-data/types";
import { Calendar } from "lucide-react";

interface GameInfoCardProps {
  game: GameInfo;
}

export function GameInfoCard({ game }: GameInfoCardProps) {
  return (
    <Card>
      <CardHeader>
        <div className="flex items-start justify-between">
          <div className="space-y-1">
            <CardTitle className="text-2xl">{game.name}</CardTitle>
            <p className="text-muted-foreground text-lg">{game.version}</p>
          </div>
          <div className="text-muted-foreground flex items-center gap-2 text-sm">
            <Calendar className="h-4 w-4" />
            {game.year}
          </div>
        </div>
      </CardHeader>
      <CardContent className="space-y-4">
        <p className="text-muted-foreground max-w-2xl">{game.description}</p>

        {game.features && (
          <div className="flex flex-wrap gap-2">
            {game.features.map((feature) => (
              <Badge key={feature} variant="outline" className="text-xs">
                {feature}
              </Badge>
            ))}
          </div>
        )}

        <div className="text-muted-foreground flex items-center gap-4 text-sm">
          <div className="flex items-center gap-1">
            <Badge variant="outline">{game.region} Region</Badge>
          </div>
          <div className="flex items-center gap-1">
            <Badge variant="outline">{game.genName}</Badge>
          </div>
        </div>
      </CardContent>
    </Card>
  );
}
