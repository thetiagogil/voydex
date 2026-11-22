"use client";

import { readMainlinePlayLibrary } from "@/modules/mainline/features/plays/shared/client/play-library-reader";
import { getSignedInTrainerId } from "@/modules/mainline/shared/client/signed-in-trainer";
import { PlayRow } from "@/modules/mainline/shared/components/play-row";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { useLocalRead } from "@/platform/local-db/local-db-context";
import { Card } from "@/shared/components/ui/card";

/* How many Plays the step names before it counts the rest. */
const shownPlays = 3;

const countMore = (count: number, one: string, many: string) =>
  `${count} ${count === 1 ? one : many}`;

/*
 * Mainline's public entry for the step after logging in (a global feature
 * that can't import a module; its route passes this in): the Plays this
 * device holds, so you see what you are deciding about. The first few as
 * the row every list of Plays uses, not links here, then how many more and
 * how many Plans. Nothing while they're read, or when there are none.
 */
export const DeviceOwnPlays = () => {
  const read = useLocalRead("device-own-plays", async (client) => {
    const userId = await getSignedInTrainerId(client);
    const [plays, plans] = await Promise.all([
      readMainlinePlayLibrary(client, userId),
      client
        .schema("planning")
        .from("mainline_team_plans")
        .select("id", { count: "exact", head: true })
        .eq("user_id", userId),
    ]);

    return { planCount: plans.count ?? 0, plays };
  });

  if (read.status !== "ready") return null;

  const { planCount, plays } = read.data;
  const more = [
    plays.length > shownPlays
      ? countMore(plays.length - shownPlays, "more Play", "more Plays")
      : null,
    planCount ? countMore(planCount, "Plan", "Plans") : null,
  ].filter(Boolean);

  if (!plays.length && !more.length) return null;

  return (
    <Card size="sm" className="gap-2">
      <p className="text-ink-2 copy-label">On this device</p>
      {plays.length ? (
        <ul aria-label="Plays on this device" className="grid gap-2">
          {plays.slice(0, shownPlays).map((play) => (
            <PlayRow
              key={play.play_id}
              detail={play.game_name ? getGameShortName(play.game_name) : null}
              play={{
                gameName: play.game_name ?? "Unknown game",
                gameSlug: play.game_slug,
                name: play.play_name ?? "Untitled Play",
                statusName: play.status_name,
                statusSlug: play.status_slug,
              }}
            />
          ))}
        </ul>
      ) : null}
      {more.length ? (
        <p className="text-ink-2 copy-note">
          {plays.length ? "and " : null}
          {more.join(", ")}
        </p>
      ) : null}
    </Card>
  );
};
