import { Header } from "@/components/shared/header";
import { Icon } from "@/components/shared/icon";
import { QuickInfo } from "@/components/shared/quick-info";
import { StatusInfo } from "@/components/shared/status-info";

export const PlayHeader = ({ play }: { play: Play }) => {
  return (
    <Header
      icon={
        <div className="bg-primary/10 border-primary/30 text-primary flex h-20 w-20 shrink-0 items-center justify-center rounded-xl border text-2xl font-bold">
          <Icon name="play" size={40} />
        </div>
      }
      title={play.name}
      badge={<StatusInfo status={play.status} value={play.status} isBadge />}
      metadata={
        <div className="flex flex-wrap items-center gap-2 text-sm">
          <QuickInfo
            icon={<Icon name="game" />}
            value={play.game.name}
            title="Current play game"
            variant="primary"
          />
          {"•"}
          <QuickInfo
            icon={<Icon name="calendar" />}
            value={`Started on ${new Date(play.created_at).toLocaleDateString()}`}
            title="Start date of the play"
          />
        </div>
      }
    />
  );
};
