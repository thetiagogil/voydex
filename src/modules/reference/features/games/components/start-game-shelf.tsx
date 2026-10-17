"use client";

import { useSearchParams } from "next/navigation";
import { useEffect, useState } from "react";

import {
  getStartPlayHref,
  readStartGeneration,
  readStartIntentParams,
  replaceStartAddress,
  START_GENERATION_EVENT,
} from "@/config/start-intent";
import { GameShelfPicker } from "@/modules/reference/features/games/components/game-shelf-picker";
import type { GameShelfGame } from "@/modules/reference/types";

type StartGameShelfProps = {
  games: GameShelfGame[];
};

/*
 * Start a Play's game shelf: the reference module's picker, with the pick
 * kept in the address (`?game=`) without asking the server again, so the
 * page around it shows that game's colour and partners at once. It opens at
 * `?gen=` when a meadow partner sent you here, and jumps there when one of
 * the partners on this page is tapped.
 */
export const StartGameShelf = ({ games }: StartGameShelfProps) => {
  const searchParams = useSearchParams();
  const intent = readStartIntentParams({
    game: searchParams.get("game"),
    partner: searchParams.get("partner"),
  });
  const [initialGeneration] = useState(() =>
    readStartGeneration(searchParams.get("gen")),
  );
  const [jumpTo, setJumpTo] = useState<{ generation: number; key: number }>();

  useEffect(() => {
    const onGeneration = (event: Event) => {
      const generation = readStartGeneration(
        String((event as CustomEvent<number>).detail),
      );

      if (generation !== undefined) {
        setJumpTo((previous) => ({
          generation,
          key: (previous?.key ?? 0) + 1,
        }));
      }
    };

    window.addEventListener(START_GENERATION_EVENT, onGeneration);

    return () =>
      window.removeEventListener(START_GENERATION_EVENT, onGeneration);
  }, []);

  return (
    <GameShelfPicker
      ariaLabel="Games"
      games={games}
      initialGeneration={initialGeneration}
      jumpTo={jumpTo}
      value={intent?.gameSlug ?? null}
      onValueChange={(gameSlug) => {
        replaceStartAddress(
          getStartPlayHref({ gameSlug: gameSlug ?? undefined }),
        );
      }}
    />
  );
};
