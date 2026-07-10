import type { TimelineMediaItem } from "@/modules/mainline/features/plays/hub/tabs/overview/sections/recent-history/recent-history-types";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";

const TimelineMediaFallback = ({ name }: Pick<TimelineMediaItem, "name">) => {
  return (
    <span
      aria-label={`${name} image unavailable`}
      title={`${name} image unavailable`}
      className="border-app-surface-border bg-muted/30 text-muted-foreground flex size-10 shrink-0 items-center justify-center rounded-md border text-sm font-semibold"
    >
      ?
    </span>
  );
};

export const RecentHistoryMedia = ({
  media,
}: {
  media: TimelineMediaItem[];
}) => {
  if (!media.length) {
    return (
      <div className="hidden justify-end sm:flex">
        <TimelineMediaFallback name="Timeline event" />
      </div>
    );
  }

  return (
    <div className="hidden min-w-0 items-center justify-end gap-1.5 sm:flex">
      {media.map((item) =>
        item.imageUrl ? (
          <PokemonPortrait
            key={item.key}
            alt={`${item.name} portrait`}
            imageUrl={item.imageUrl}
            sizes="2.5rem"
            className="size-10 rounded-md border-0 bg-transparent"
            glowClassName="opacity-0"
            imageClassName="p-0.5"
          />
        ) : (
          <TimelineMediaFallback key={item.key} name={item.name} />
        ),
      )}
    </div>
  );
};
