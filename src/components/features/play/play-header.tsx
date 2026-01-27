import { Header } from "@/components/shared/header";
import { QuickInfo } from "@/components/shared/quick-info";
import { StatusInfo } from "@/components/shared/status-info";
import { Calendar, Gamepad2, Swords } from "lucide-react";

export const PlayHeader = ({ play }: { play: Play }) => {
  return (
    <Header
      icon={
        <div className="bg-primary/10 border-primary/30 text-primary flex h-20 w-20 shrink-0 items-center justify-center rounded-xl border text-2xl font-bold">
          <Swords className="h-10 w-10" />
        </div>
      }
      title={play.name}
      badge={<StatusInfo status={play.status} value={play.status} isBadge />}
      metadata={
        <div className="flex flex-wrap items-center gap-2 text-sm">
          <QuickInfo
            icon={<Gamepad2 className="h-4 w-4" />}
            value={play.game.name}
            title="Current play game"
            variant="primary"
          />
          {"•"}
          <QuickInfo
            icon={<Calendar className="h-4 w-4" />}
            value={`Started on ${new Date(play.created_at).toLocaleDateString()}`}
            title="Start date of the play"
          />
        </div>
      }
    />
  );
};
