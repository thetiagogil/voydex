import { Card, CardContent } from "@/components/ui/card";

interface StatsCardProps {
  value: string | number;
  label: string;
}

function StatsCard({ value, label }: StatsCardProps) {
  return (
    <Card>
      <CardContent className="pt-6">
        <div className="text-center space-y-2">
          <p className="text-2xl font-bold">{value}</p>
          <p className="text-xs text-muted-foreground">{label}</p>
        </div>
      </CardContent>
    </Card>
  );
}

interface StatsSectionProps {
  stats?: {
    activePlaythroughs?: number;
    completedGames?: number;
    totalPokemon?: number;
  };
}

export function StatsSection({ stats }: StatsSectionProps) {
  const {
    activePlaythroughs = 0,
    completedGames = 0,
    totalPokemon = 493,
  } = stats || {};

  return (
    <div className="grid gap-4 md:grid-cols-3">
      <StatsCard value={activePlaythroughs} label="Active Playthroughs" />
      <StatsCard value={completedGames} label="Completed Games" />
      <StatsCard value={totalPokemon} label="Total Pokémon" />
    </div>
  );
}
