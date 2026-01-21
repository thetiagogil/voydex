import { Header } from "@/components/shared/header";
import { Badge } from "@/components/ui/badge";
import { MapPin } from "lucide-react";

interface GenHeaderProps {
  gen: GenerationWithGames;
}

export const GenHeader = ({ gen }: GenHeaderProps) => {
  const yearRange = gen.end_year
    ? `${gen.start_year} - ${gen.end_year}`
    : `${gen.start_year} - Present`;

  return (
    <Header
      title={gen.name}
      metadata={
        <div className="flex flex-wrap items-center gap-2 text-sm">
          <span className="flex items-center gap-1">
            <MapPin className="h-4 w-4" />
            {gen.region.name} Region
          </span>
          <span>•</span>
          <span>{yearRange}</span>
        </div>
      }
      info={
        <div className="flex flex-wrap gap-2">
          <Badge variant="outline-primary">
            {gen.new_pokemon_count} New Pokémon
          </Badge>
          <Badge variant="outline-secondary">
            {gen.staticStats.gameCount} Games
          </Badge>
        </div>
      }
    />
  );
};
