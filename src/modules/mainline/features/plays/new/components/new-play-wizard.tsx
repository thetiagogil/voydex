"use client";

import Link from "next/link";
import { useEffect, useId, useRef, useState } from "react";

import { appRoutes } from "@/config/routes";
import { useStartPlay } from "@/modules/mainline/features/plays/shared/client/use-start-play";
import { NewPlayTracking } from "@/modules/mainline/features/plays/new/components/new-play-tracking";
import { PartnerCast } from "@/modules/mainline/features/plays/shared/components/partner-cast";
import type { NewPlayPageData } from "@/modules/mainline/features/plays/new/types";
import { defaultPlayName } from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import { GameShelfPicker } from "@/modules/reference/features/games/components/game-shelf-picker";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { MeadowScene } from "@/shared/components/meadow-scene";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import { Input } from "@/shared/components/ui/input";
import { Label } from "@/shared/components/ui/label";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type NewPlayWizardProps = {
  data: NewPlayPageData;
};

type Step = 1 | 2 | 3;

const stepLabels: Record<Step, string> = { 1: "Game", 2: "Partner", 3: "Name" };

/* v3 `.npx-steps`: where you are; finished steps take you back. */
const NewPlaySteps = ({
  onStepChange,
  step,
}: {
  onStepChange: (step: Step) => void;
  step: Step;
}) => (
  <ol
    aria-label="Steps"
    className="relative z-7 flex items-center justify-center gap-1.5 px-14 pt-4"
  >
    {([1, 2, 3] as const).map((number) => {
      const isDone = number < step;
      const isCurrent = number === step;

      return (
        <li key={number} className="flex items-center gap-1.5">
          {number > 1 ? (
            <span
              aria-hidden
              className="bg-line mr-1 h-0.5 w-4 rounded-full sm:w-6"
            />
          ) : null}
          {isDone ? (
            <button
              type="button"
              onClick={() => onStepChange(number)}
              className="text-action-lip text-13 hover:bg-surface focus-visible:outline-focus inline-flex h-9 items-center gap-1.5 rounded-full px-2.5 font-extrabold outline-none focus-visible:outline-3 focus-visible:outline-solid"
            >
              <AppIcon
                icon={appIcons.status.active}
                size="sm"
                strokeWidth={3}
              />
              <span className="max-sm:sr-only">{stepLabels[number]}</span>
            </button>
          ) : (
            <span
              aria-current={isCurrent ? "step" : undefined}
              className={cn(
                "text-13 inline-flex h-9 items-center gap-1.5 px-2 font-extrabold",
                isCurrent ? "text-ink" : "text-ink-2",
              )}
            >
              <span
                className={cn(
                  "text-12 grid size-5.5 place-items-center rounded-full",
                  isCurrent ? "bg-ink text-on-ink" : "bg-surface text-ink-2",
                )}
              >
                {number}
              </span>
              <span className={isCurrent ? undefined : "max-sm:sr-only"}>
                {stepLabels[number]}
              </span>
            </span>
          )}
        </li>
      );
    })}
  </ol>
);

/*
 * New Play (v3 `newplay`), in three short steps in the Home's language: the
 * game on its cover shelf, the partner on the meadow (or later), then the
 * Play's name, trainer name and what it tracks. Start writes the Play and
 * opens it.
 */
export const NewPlayWizard = ({ data }: NewPlayWizardProps) => {
  const initialStarters = data.initial.gameSlug
    ? data.startersByGameSlug[data.initial.gameSlug]
    : undefined;
  const initialPartner =
    initialStarters?.starters.find(
      (starter) => starter.speciesSlug === data.initial.partnerSpeciesSlug,
    ) ?? null;
  const [step, setStep] = useState<Step>(data.initial.gameSlug ? 2 : 1);
  const [gameSlug, setGameSlug] = useState<string | null>(
    data.initial.gameSlug,
  );
  const [partnerId, setPartnerId] = useState<number | null>(
    initialPartner?.speciesId ?? null,
  );
  const [playName, setPlayName] = useState(defaultPlayName);
  const [trainerName, setTrainerName] = useState(data.trainerName ?? "");
  const [owned, setOwned] = useState<number[]>([]);
  const { isPending, startPlay } = useStartPlay();
  const titleRef = useRef<HTMLHeadingElement>(null);
  const titleId = useId();
  const isFirstRender = useRef(true);

  const game = data.games.find((candidate) => candidate.slug === gameSlug);
  const starters = gameSlug
    ? (data.startersByGameSlug[gameSlug]?.starters ?? [])
    : [];
  const isSolo = starters.length === 1;
  const partner =
    (isSolo
      ? starters[0]
      : starters.find((starter) => starter.speciesId === partnerId)) ?? null;
  const expansions = gameSlug
    ? (data.expansionsByGameSlug[gameSlug] ?? [])
    : [];

  /* Each step's title takes focus, so a screen reader hears where it is. */
  useEffect(() => {
    if (isFirstRender.current) {
      isFirstRender.current = false;
      return;
    }

    titleRef.current?.focus();
  }, [step]);

  const pickGame = (slug: string | null) => {
    setGameSlug(slug);
    setPartnerId(null);
    setOwned([]);
  };

  const start = () => {
    if (!game) return;

    startPlay(
      {
        expansionVersionGroupIds: owned,
        gameSlug: game.slug,
        partner: partner
          ? { formId: partner.formId, speciesId: partner.speciesId }
          : null,
        playName,
        trainerName,
      },
      game.shortName,
    );
  };

  const title =
    step === 1
      ? "Which game are you playing?"
      : step === 2
        ? isSolo && partner
          ? `${partner.name} is your partner`
          : "Who's your partner?"
        : "Name your Play";
  const subtitle =
    step === 2
      ? isSolo
        ? "In this one, your partner is chosen for you."
        : starters.length
          ? "Your first milestone. You can also decide later."
          : "Voydex doesn't know this game's first partners yet. You can add yours later."
      : step === 3
        ? "You can change any of this later, in Play settings."
        : null;
  const summary =
    step === 1
      ? game
        ? [game.name, game.regionName, game.platformNames.join(", ")]
            .filter(Boolean)
            .join(" · ")
        : "Pick a game to continue"
      : step === 2
        ? [game?.name, partner?.name].filter(Boolean).join(" · ")
        : [
            game?.shortName,
            playName.trim() || defaultPlayName,
            partner?.name ?? "Partner later",
          ]
            .filter(Boolean)
            .join(" · ");

  return (
    <section
      aria-labelledby={titleId}
      data-slot="card"
      style={game ? getGameColourStyle(game.slug) : undefined}
      className={cn(
        "bg-surface shadow-card mx-auto flex w-full max-w-[880px] flex-col overflow-hidden rounded-2xl",
        game && "game-scope",
      )}
    >
      <MeadowScene
        tinted={Boolean(game)}
        form="card"
        className="rounded-none sm:rounded-none"
        sceneClassName={cn(
          step === 1 && "h-12 sm:h-14",
          step === 2 && "h-56 sm:h-72",
          step === 3 && (partner ? "h-44 sm:h-52" : "h-12 sm:h-16"),
        )}
        cast={
          step === 2 && starters.length ? (
            <PartnerCast
              size="xl"
              starters={starters}
              value={partner?.speciesId ?? null}
              onValueChange={setPartnerId}
            />
          ) : step === 3 && partner ? (
            <PartnerCast
              size="md"
              starters={[partner]}
              value={partner.speciesId}
            />
          ) : null
        }
      >
        <NewPlaySteps step={step} onStepChange={setStep} />
        <Link
          href={appRoutes.mainlinePlays}
          aria-label="Close New Play"
          className={buttonVariants({
            className:
              "bg-surface text-ink-2 hover:bg-hover hover:text-ink absolute top-3 right-3 z-8 rounded-full",
            size: "icon",
            variant: "ghost",
          })}
        >
          <AppIcon icon={appIcons.actions.close} size="lg" />
        </Link>
        <div className="px-6 pt-5 text-center sm:px-10">
          <h1
            id={titleId}
            ref={titleRef}
            tabIndex={-1}
            className="text-24 leading-tight tracking-[-0.015em] outline-none sm:text-[30px]"
          >
            {title}
          </h1>
          {subtitle ? (
            <p className="text-ink-2 text-15 mx-auto mt-1.5 max-w-[32em] font-semibold">
              {subtitle}
            </p>
          ) : null}
        </div>
        {step === 1 ? (
          <GameShelfPicker
            ariaLabel="Games"
            coverSize="lg"
            games={data.games}
            value={gameSlug}
            onValueChange={pickGame}
            className="mt-2"
          />
        ) : null}
      </MeadowScene>

      {step === 3 && game ? (
        <div className="flex flex-col gap-4 px-5 pt-6 pb-2 sm:px-8">
          <div className="grid gap-4 sm:grid-cols-2">
            <div className="flex flex-col gap-1.5">
              <Label
                htmlFor="new-play-name"
                className="text-ink-2 text-13 font-bold"
              >
                Play name
              </Label>
              <Input
                id="new-play-name"
                value={playName}
                maxLength={200}
                onChange={(event) => setPlayName(event.currentTarget.value)}
                placeholder={defaultPlayName}
              />
            </div>
            <div className="flex flex-col gap-1.5">
              <Label
                htmlFor="new-play-trainer"
                className="text-ink-2 text-13 font-bold"
              >
                Trainer name
              </Label>
              <Input
                id="new-play-trainer"
                value={trainerName}
                maxLength={120}
                autoComplete="nickname"
                onChange={(event) => setTrainerName(event.currentTarget.value)}
                placeholder="Trainer name"
              />
            </div>
          </div>
          <NewPlayTracking
            expansions={expansions}
            owned={owned}
            onOwnedChange={setOwned}
          />
        </div>
      ) : null}

      <div className="border-line mt-auto flex flex-wrap items-center gap-3 border-t px-5 py-4 sm:px-8">
        <p
          aria-live="polite"
          className="text-ink-2 text-14 mr-auto min-w-0 basis-full font-semibold sm:basis-auto"
        >
          {summary}
        </p>
        {step === 1 ? (
          <Link
            href={appRoutes.mainlinePlays}
            className={buttonVariants({ size: "sm", variant: "outline" })}
          >
            Cancel
          </Link>
        ) : (
          <Button
            type="button"
            size="sm"
            variant="outline"
            disabled={isPending}
            onClick={() => setStep((current) => (current - 1) as Step)}
          >
            Back
          </Button>
        )}
        {step === 1 ? (
          <Button
            type="button"
            size="sm"
            disabled={!game}
            onClick={() => setStep(2)}
          >
            Next
            <AppIcon icon={appIcons.actions.continue} inline="end" />
          </Button>
        ) : step === 2 ? (
          <Button type="button" size="sm" onClick={() => setStep(3)}>
            {partner || !starters.length ? (
              <>
                Next
                <AppIcon icon={appIcons.actions.continue} inline="end" />
              </>
            ) : (
              "Decide later"
            )}
          </Button>
        ) : (
          <Button type="button" size="sm" disabled={isPending} onClick={start}>
            {isPending ? (
              <Spinner className="size-4" />
            ) : (
              <AppIcon icon={appIcons.status.active} inline="start" />
            )}
            {partner
              ? `Start with ${partner.name}`
              : `Start your ${game?.shortName ?? ""} Play`}
          </Button>
        )}
      </div>
    </section>
  );
};
