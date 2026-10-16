"use client";

import { useState } from "react";

import type { StartIntent } from "@/config/start-intent";
import {
  HomeBandGround,
  HomeBandHeading,
} from "@/modules/mainline/features/home/components/home-band-parts";
import { useStartPlay } from "@/modules/mainline/features/plays/shared/client/use-start-play";
import { PartnerCast } from "@/modules/mainline/features/plays/shared/components/partner-cast";
import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";
import { defaultPlayName } from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import { GameShelfPicker } from "@/modules/reference/features/games/components/game-shelf-picker";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { MeadowScene } from "@/shared/components/meadow-scene";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type HomeFirstPlayPickerProps = {
  greeting: string;
  /* The game (and partner) picked on Start a Play before signing up. */
  intent: StartIntent | null;
  picker: NewPlayPickerData;
};

/*
 * Home with no Plays yet (v3 `homenew`): the game picker is the page. Pick
 * your game, tap your partner on the meadow, and Start creates the Play
 * straight away, named "New Journey" with your trainer name; Play settings
 * change the rest later.
 */
export const HomeFirstPlayPicker = ({
  greeting,
  intent,
  picker,
}: HomeFirstPlayPickerProps) => {
  const intentGame = picker.games.some((game) => game.slug === intent?.gameSlug)
    ? (intent?.gameSlug ?? null)
    : null;
  const [gameSlug, setGameSlug] = useState<string | null>(intentGame);
  const [partnerId, setPartnerId] = useState<number | null>(() => {
    const starters = intentGame
      ? (picker.startersByGameSlug[intentGame]?.starters ?? [])
      : [];

    return (
      starters.find(
        (starter) => starter.speciesSlug === intent?.partnerSpeciesSlug,
      )?.speciesId ?? null
    );
  });
  const { isPending, startPlay } = useStartPlay();
  const game = picker.games.find((candidate) => candidate.slug === gameSlug);
  const starters = gameSlug
    ? (picker.startersByGameSlug[gameSlug]?.starters ?? [])
    : [];
  const partner =
    (starters.length === 1
      ? starters[0]
      : starters.find((starter) => starter.speciesId === partnerId)) ?? null;

  const start = () => {
    if (!game) return;

    startPlay(
      {
        expansionVersionGroupIds: [],
        gameSlug: game.slug,
        partner: partner
          ? { formId: partner.formId, speciesId: partner.speciesId }
          : null,
        playName: defaultPlayName,
        trainerName: picker.trainerName,
      },
      game.shortName,
    );
  };

  return (
    <section
      aria-labelledby="home-greeting"
      style={game ? getGameColourStyle(game.slug) : undefined}
      className={game ? "game-scope" : undefined}
    >
      <MeadowScene
        tinted={Boolean(game)}
        form="band"
        sceneClassName={game ? "h-56 sm:h-64" : "h-24 sm:h-32"}
        cast={
          starters.length ? (
            <PartnerCast
              size="lg"
              starters={starters}
              value={partner?.speciesId ?? null}
              onValueChange={setPartnerId}
            />
          ) : null
        }
        ground={
          <HomeBandGround
            title={
              game
                ? `A new ${game.shortName} journey`
                : "Every journey starts with a partner"
            }
            detail={
              game
                ? [
                    game.regionName,
                    partner
                      ? `${partner.name} is your partner`
                      : starters.length
                        ? "Choose your partner"
                        : "You can add your partner later",
                  ]
                    .filter(Boolean)
                    .join(" · ")
                : "Pick your game above to meet yours"
            }
            action={
              game ? (
                <Button type="button" disabled={isPending} onClick={start}>
                  {isPending ? <Spinner className="size-5" /> : null}
                  {partner
                    ? `Start with ${partner.name}`
                    : `Start a ${game.shortName} Play`}
                </Button>
              ) : null
            }
          />
        }
      >
        <HomeBandHeading
          id="home-greeting"
          greeting={greeting}
          subtitle="Let's start your first Play. Which game are you playing?"
        />
        <GameShelfPicker
          ariaLabel="Games"
          games={picker.games}
          value={gameSlug}
          onValueChange={(slug) => {
            setGameSlug(slug);
            setPartnerId(null);
          }}
        />
      </MeadowScene>
    </section>
  );
};
