import { Card, CardContent } from "@/components/ui/card";
import { CheckCircle, CircleDot, Gamepad2, Play } from "lucide-react";

interface GenStatsSectionProps {
  userStats: GenerationUserStats | null;
  staticStats: GenerationStaticStats;
}

export const GenStatsSection = ({
  userStats,
  staticStats,
}: GenStatsSectionProps) => {
  // If no user stats, show a different view
  if (!userStats || userStats.totalPlays === 0) {
    return (
      <Card className="border-dashed">
        <CardContent className="py-6">
          <div className="text-muted-foreground flex flex-col items-center gap-2 text-center">
            <Gamepad2 className="h-8 w-8" />
            <p className="font-medium">No playthroughs yet</p>
            <p className="text-sm">
              Start your first adventure in this generation!
            </p>
          </div>
        </CardContent>
      </Card>
    );
  }

  const stats = [
    {
      label: "Games Played",
      value: userStats.gamesPlayed,
      total: staticStats.gameCount,
      icon: Gamepad2,
      color: "text-blue-500",
      bgColor: "bg-blue-500/10",
    },
    {
      label: "Total Plays",
      value: userStats.totalPlays,
      icon: Play,
      color: "text-purple-500",
      bgColor: "bg-purple-500/10",
    },
    {
      label: "Active",
      value: userStats.activePlays,
      icon: CircleDot,
      color: "text-green-500",
      bgColor: "bg-green-500/10",
    },
    {
      label: "Completed",
      value: userStats.completedPlays,
      icon: CheckCircle,
      color: "text-yellow-500",
      bgColor: "bg-yellow-500/10",
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
              <p className="text-2xl font-bold">
                {stat.value}
                {stat.total !== undefined && (
                  <span className="text-muted-foreground text-sm font-normal">
                    /{stat.total}
                  </span>
                )}
              </p>
            </div>
          </CardContent>
        </Card>
      ))}
    </div>
  );
};
