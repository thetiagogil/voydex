import Link from "next/link";
import { BookOpen, ListChecks, Star } from "lucide-react";

import { appRoutes } from "@/config/routes";
import { Button } from "@/shared/components/ui/button";

type ProgressHeaderProps = {
  playId: string;
};

export const ProgressHeader = ({ playId }: ProgressHeaderProps) => {
  return (
    <div className="flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
      <div>
        <h2 className="text-2xl font-semibold tracking-normal">Progress</h2>
        <p className="text-muted-foreground text-sm">
          Track story, Pokedex, and collectibles for this play.
        </p>
      </div>

      <div className="flex flex-wrap gap-2">
        <Button
          render={<Link href={appRoutes.mainlinePlayStory(playId)} />}
          nativeButton={false}
        >
          <BookOpen data-icon="inline-start" />
          Open Story
        </Button>
        <Button
          render={<Link href={appRoutes.mainlinePlayPokedex(playId)} />}
          nativeButton={false}
          variant="outline"
        >
          <ListChecks data-icon="inline-start" />
          Open Pokedex
        </Button>
        <Button
          render={<Link href={appRoutes.mainlinePlayCollectibles(playId)} />}
          nativeButton={false}
          variant="outline"
        >
          <Star data-icon="inline-start" />
          Open Collectibles
        </Button>
      </div>
    </div>
  );
};
