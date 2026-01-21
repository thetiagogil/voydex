import { Card, CardContent } from "@/components/ui/card";
import { CheckCircle, CircleDot, Gamepad2, Play } from "lucide-react";

interface GameStatsSectionProps {
  userStats: GameWithFullData["userStats"];
}

export const GameStatsSection = ({ userStats }: GameStatsSectionProps) => {
  // If no playthroughs, show empty state
  if (userStats.totalPlaythroughs === 0) {
    return null; // The empty state is handled by GameEmptyPlay
  }

  const stats = [
    {
      label: "Total Plays",
      value: userStats.totalPlaythroughs,
      icon: Play,
      color: "text-purple-500",
      bgColor: "bg-purple-500/10",
    },
    {
      label: "Active",
      value: userStats.activePlaythroughs,
      icon: CircleDot,
      color: "text-green-500",
      bgColor: "bg-green-500/10",
    },
    {
      label: "Completed",
      value: userStats.completedPlaythroughs,
      icon: CheckCircle,
      color: "text-yellow-500",
      bgColor: "bg-yellow-500/10",
    },
    {
      label: "Pokémon Caught",
      value: userStats.totalPokemonCaught,
      icon: Gamepad2,
      color: "text-blue-500",
      bgColor: "bg-blue-500/10",
    },
  ];

  return (
    <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
      {stats.map((stat) => (
        <Card key={stat.label}>
          <CardContent className="flex items-center gap-4 py-4">
            <div className={`rounded-lg p-2.5 ${stat.bgColor}`}>
              <stat.icon className={`h-5 w-5 ${stat.color}`} />
            </div>
            <div>
              <p className="text-muted-foreground text-sm">{stat.label}</p>
              <p className="text-2xl font-bold">{stat.value}</p>
            </div>
          </CardContent>
        </Card>
      ))}
    </div>
  );
};
