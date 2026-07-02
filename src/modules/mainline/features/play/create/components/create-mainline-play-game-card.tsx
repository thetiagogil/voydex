import Image from "next/image";

import type { CreateMainlinePlayState } from "@/modules/mainline/features/play/create/create-mainline-play-action-state";
import type { CreateMainlinePlayPageData } from "@/modules/mainline/features/play/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import {
  FieldError,
  FieldLegend,
  FieldSet,
} from "@/shared/components/ui/field";

type CreateMainlinePlayGameCardProps = {
  data: CreateMainlinePlayPageData;
  state: CreateMainlinePlayState;
};

export const CreateMainlinePlayGameCard = ({
  data,
  state,
}: CreateMainlinePlayGameCardProps) => {
  return (
    <Card>
      <CardHeader>
        <CardTitle>Choose a game</CardTitle>
        <CardDescription>
          The game sets the story, Pokédex, collectible, and reference scopes
          for this play.
        </CardDescription>
      </CardHeader>
      <CardContent>
        <FieldSet>
          <FieldLegend className="sr-only">Game</FieldLegend>
          <div className="grid max-h-136 gap-3 overflow-y-auto pr-1 sm:grid-cols-2">
            {data.games.map((option) => (
              <label key={option.game.id} className="cursor-pointer">
                <input
                  type="radio"
                  name="gameId"
                  value={option.game.id}
                  className="peer sr-only"
                  required
                />
                <span className="border-app-surface-border bg-card/55 hover:bg-accent/35 peer-checked:border-primary/60 peer-checked:bg-primary/10 peer-focus-visible:ring-ring/50 flex min-h-28 gap-3 rounded-xl border p-3 transition-colors peer-focus-visible:ring-3">
                  <span className="bg-muted/70 text-muted-foreground relative flex aspect-[3/4] h-20 shrink-0 items-center justify-center overflow-hidden rounded-lg">
                    {option.coverImageUrl ? (
                      <Image
                        src={option.coverImageUrl}
                        alt=""
                        fill
                        sizes="3.75rem"
                        className="object-cover"
                      />
                    ) : (
                      <AppIcon
                        icon={appIcons.product.game}
                        className="size-5"
                      />
                    )}
                  </span>
                  <span className="flex min-w-0 flex-1 flex-col gap-1">
                    <span className="truncate font-medium">
                      {option.game.name}
                    </span>
                    <span className="text-muted-foreground text-xs">
                      {option.generation?.name ?? "Unknown generation"}
                      {option.region ? ` - ${option.region.name}` : ""}
                    </span>
                    <span className="text-muted-foreground text-xs">
                      {option.platforms.length
                        ? option.platforms
                            .map((platform) => platform.name)
                            .join(", ")
                        : "Platform not set"}
                    </span>
                    <span className="text-muted-foreground mt-auto flex items-center gap-1 text-xs">
                      <AppIcon icon={appIcons.product.date} aria-hidden />
                      {option.game.release_year}
                    </span>
                  </span>
                </span>
              </label>
            ))}
          </div>
          <FieldError>{state.fieldErrors?.gameId}</FieldError>
        </FieldSet>
      </CardContent>
    </Card>
  );
};
