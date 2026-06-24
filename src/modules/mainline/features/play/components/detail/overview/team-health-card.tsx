import Link from "next/link";
import { appRoutes } from "@/config/routes";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  formatNumber,
  getActiveTeam,
  getReserveTeam,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type TeamHealthCardProps = {
  data: MainlinePlayDetailData;
};

export const TeamHealthCard = ({ data }: TeamHealthCardProps) => {
  const activeTeam = getActiveTeam(data.team);
  const reserveTeam = getReserveTeam(data.team);
  const openActiveSlots = Math.max(6 - activeTeam.length, 0);
  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <AppIcon
            icon={appIcons.product.health}
            className="text-primary size-5"
          />
          Team Health
        </CardTitle>
      </CardHeader>
      <CardContent className="grid gap-3 sm:grid-cols-3">
        <div className="flex gap-3 rounded-lg border p-3">
          <AppIcon
            icon={appIcons.product.roster}
            className="text-warning size-6"
          />
          <div>
            <p className="font-medium">Active roster</p>
            <p className="text-muted-foreground text-sm">
              {formatNumber(activeTeam.length)} / 6 slots filled
            </p>
          </div>
        </div>
        <div className="flex gap-3 rounded-lg border p-3">
          <AppIcon
            icon={appIcons.product.reserve}
            className="text-primary size-6"
          />
          <div>
            <p className="font-medium">{reserveTeam.length} reserves</p>
            <p className="text-muted-foreground text-sm">
              {formatNumber(openActiveSlots)} active slots open
            </p>
          </div>
        </div>
        <Button
          render={
            <Link
              href={appRoutes.mainlinePlayTeam(String(data.overview.play_id))}
            />
          }
          nativeButton={false}
          variant="outline"
          className="h-auto justify-between p-3"
        >
          Review team
          <AppIcon icon={appIcons.actions.continue} inline="end" />
        </Button>
      </CardContent>
    </Card>
  );
};
