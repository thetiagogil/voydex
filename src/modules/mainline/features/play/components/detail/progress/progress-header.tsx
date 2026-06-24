import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { Button } from "@/shared/components/ui/button";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type ProgressHeaderProps = {
  playId: string;
};

export const ProgressHeader = ({ playId }: ProgressHeaderProps) => {
  return (
    <div className="flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
      <div>
        <h2 className="text-2xl font-semibold tracking-normal">Progress</h2>
        <p className="text-muted-foreground text-sm">
          Track story, Pokédex, and collectibles for this play.
        </p>
      </div>

      <div className="flex flex-wrap gap-2">
        <Button
          render={<Link href={appRoutes.mainlinePlayStory(playId)} />}
          nativeButton={false}
        >
          <AppIcon icon={appIcons.views.mainline.story} inline="start" />
          Open Story
        </Button>
        <Button
          render={<Link href={appRoutes.mainlinePlayPokedex(playId)} />}
          nativeButton={false}
          variant="outline"
        >
          <AppIcon icon={appIcons.views.mainline.pokedex} inline="start" />
          Open Pokédex
        </Button>
        <Button
          render={<Link href={appRoutes.mainlinePlayCollectibles(playId)} />}
          nativeButton={false}
          variant="outline"
        >
          <AppIcon icon={appIcons.views.mainline.collectibles} inline="start" />
          Open Collectibles
        </Button>
      </div>
    </div>
  );
};
