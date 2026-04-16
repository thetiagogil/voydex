import { cn } from "@/lib/utils/cn";
import { Icon } from "@/shared/components/icon";
import { QuickInfo } from "@/shared/components/quick-info";
import { StatusInfo } from "@/shared/components/status-info";
import { Card, CardContent } from "@/shared/components/ui/card";
import { toStatusVariant } from "@/shared/constants/play-statuses";
import { getPlaysRoute } from "@/shared/constants/routes";
import type { PlayStatusInfo } from "@/shared/types";
import { formatTime } from "@/shared/utils";
import Link from "next/link";
import { CARD_HOVER_EFFECT } from "../constants/styles";

type PlayCardPlay = {
  id: string;
  name: string;
  status: PlayStatusInfo;
  updatedAt: string;
};

type PlayCardProps = {
  play: PlayCardPlay;
};

export const PlayCard = ({ play }: PlayCardProps) => {
  return (
    <Link href={getPlaysRoute(play.id)}>
      <Card
        className={cn(
          "group hover:border-primary/50 flex h-full cursor-pointer flex-col",
          CARD_HOVER_EFFECT,
        )}
      >
        <CardContent className="flex flex-col">
          <div className="flex flex-col gap-4 md:flex-row md:items-center">
            <div className="flex w-full flex-1 gap-4">
              <div className="text-md bg-primary/10 border-primary/30 text-primary flex h-14 w-14 shrink-0 items-center justify-center rounded-xl border font-bold">
                <Icon type="play" className="h-6 w-6" />
              </div>

              <div className="flex flex-1 justify-between gap-2">
                <div>
                  <div className="flex gap-2">
                    <h3
                      className="w-40 truncate text-lg font-semibold sm:w-full"
                      title={play.name}
                    >
                      {play.name}
                    </h3>
                    <StatusInfo status={toStatusVariant(play.status.slug)} />
                  </div>
                  <div className="text-muted-foreground">
                    <QuickInfo
                      icon={<Icon type="time" size={12} />}
                      value={formatTime(play.updatedAt)}
                      title="Last updated"
                    />
                  </div>
                </div>
                <Icon type="rightArrow" className="group-hover:text-primary" />
              </div>
            </div>
          </div>
        </CardContent>
      </Card>
    </Link>
  );
};
