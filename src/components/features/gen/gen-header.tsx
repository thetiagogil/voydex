import { Header } from "@/components/shared/header";
import { QuickStat } from "@/components/shared/quick-stat";
import { Calendar, Cat, Gamepad2 } from "lucide-react";

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
          <QuickStat
            size="sm"
            icon={<Calendar className="h-4 w-4" />}
            value={yearRange}
          />
          <span>•</span>
          <QuickStat
            size="sm"
            icon={<Cat className="h-4 w-4" />}
            value={gen.total_pokemon_count}
          />
          <span>•</span>
          <QuickStat
            size="sm"
            icon={<Gamepad2 className="h-4 w-4" />}
            value={gen.staticStats.gameCount}
          />
        </div>
      }
    />
  );
};
