"use client";

import { useRouter } from "next/navigation";
import { startTransition, useOptimistic } from "react";

import { getStartPlayHref } from "@/config/start-intent";
import { GameShelfPicker } from "@/modules/reference/features/games/components/game-shelf-picker";
import type { GameShelfGame } from "@/modules/reference/types";

type StartGameShelfProps = {
  games: GameShelfGame[];
  initialGeneration?: number;
  value: string | null;
};

/*
 * Start a Play's game shelf: the reference module's picker, with the pick
 * kept in the address (`?game=`) so the page around it can show that game's
 * partners. The cover stands up at once while the page catches up.
 */
export const StartGameShelf = ({
  games,
  initialGeneration,
  value,
}: StartGameShelfProps) => {
  const router = useRouter();
  const [pickedSlug, setPickedSlug] = useOptimistic(value);

  return (
    <GameShelfPicker
      ariaLabel="Games"
      games={games}
      initialGeneration={initialGeneration}
      value={pickedSlug}
      onValueChange={(gameSlug) => {
        startTransition(() => {
          setPickedSlug(gameSlug);
          router.replace(
            getStartPlayHref({ gameSlug: gameSlug ?? undefined }),
            {
              scroll: false,
            },
          );
        });
      }}
    />
  );
};
