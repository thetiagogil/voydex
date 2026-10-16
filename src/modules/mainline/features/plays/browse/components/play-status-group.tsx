import { PlayCard } from "@/modules/mainline/features/plays/browse/components/play-card";
import type { PlayStatusGroup as PlayStatusGroupModel } from "@/modules/mainline/features/plays/browse/play-browse-model";
import { formatPlayCount } from "@/modules/mainline/features/plays/browse/play-browse-display";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";

type PlayStatusGroupProps = {
  group: PlayStatusGroupModel<PlayBrowseItem>;
};

/* A grid of cards keeps its heading on the page: the status and its count. */
export const PlayStatusGroup = ({ group }: PlayStatusGroupProps) => {
  const headingId = `plays-group-${group.id || "other"}`;

  return (
    <section aria-labelledby={headingId}>
      <h2
        id={headingId}
        className="text-20 mb-3.5 flex flex-wrap items-baseline gap-x-2.5 leading-tight"
      >
        {group.name}
        <span className="text-ink-3 text-14 font-sans font-semibold">
          {formatPlayCount(group.plays.length)}
        </span>
      </h2>
      <ul className="grid gap-3">
        {group.plays.map((play) => (
          <PlayCard
            key={play.play_id ?? `${play.game_id}-${play.created_at}`}
            play={play}
          />
        ))}
      </ul>
    </section>
  );
};
