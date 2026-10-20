"use client";

import { useRouter } from "next/navigation";
import { useEffect, useId, useRef, useState } from "react";
import { toast } from "sonner";

import { useStartPlay } from "@/modules/mainline/features/plays/shared/client/use-start-play";
import { NewPlayRules } from "@/modules/mainline/features/plays/new/components/new-play-rules";
import { NewPlayTracking } from "@/modules/mainline/features/plays/new/components/new-play-tracking";
import { PartnerCast } from "@/modules/mainline/features/plays/shared/components/partner-cast";
import type { NewPlayWizardData } from "@/modules/mainline/features/plays/new/types";
import { defaultPlayName } from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import {
  clearMissingRuleTypes,
  getRuleSelectionError,
  type PlayRuleSelection,
} from "@/modules/mainline/shared/data/challenge-rule-options";
import { getGameTypes } from "@/modules/reference/features/games/domain/game-types";
import { GameShelfPicker } from "@/modules/reference/features/games/components/game-shelf-picker";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { MeadowScene } from "@/shared/components/meadow-scene";
import { Button } from "@/shared/components/ui/button";
import { Input } from "@/shared/components/ui/input";
import { FieldLabel } from "@/shared/components/ui/field";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type NewPlayWizardProps = {
  data: NewPlayWizardData;
  /* Close and Cancel: New Play is a dialog over the page (v3 `npxopen`). */
  onClose: () => void;
};

type Step = 1 | 2 | 3;

/* The overlays' one close button, in the same corner, over the meadow. */
const closeClassName = "absolute top-4 right-4 z-8";

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
              className="text-action-lip text-13 hover:bg-surface focus-ring inline-flex h-9 items-center gap-1.5 rounded-full px-2.5 font-extrabold"
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
export const NewPlayWizard = ({ data, onClose }: NewPlayWizardProps) => {
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
  const [rules, setRules] = useState<PlayRuleSelection[]>([]);
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
  /* Monotype offers the types the picked game has: no Fairy in Red. */
  const types = game ? getGameTypes(data.types, game.generation.number) : [];

  /* Each step's title takes focus, so a screen reader hears where it is. */
  useEffect(() => {
    if (isFirstRender.current) {
      isFirstRender.current = false;
      return;
    }

    titleRef.current?.focus();
  }, [step]);

  const pickGame = (slug: string | null) => {
    const next = data.games.find((candidate) => candidate.slug === slug);
    const nextTypeIds = next
      ? getGameTypes(data.types, next.generation.number).map((type) => type.id)
      : [];

    setGameSlug(slug);
    setPartnerId(null);
    setOwned([]);
    /* A type the new game doesn't have waits to be picked again. */
    setRules((current) => clearMissingRuleTypes(current, nextTypeIds));
  };

  const start = () => {
    if (!game) return;

    const ruleError = getRuleSelectionError(data.rules, rules);

    if (ruleError) {
      toast.error(ruleError);
      return;
    }

    startPlay(
      {
        challengeRules: rules,
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
      className="bg-surface mx-auto flex w-full max-w-220 flex-col overflow-hidden rounded-2xl max-sm:rounded-none"
    >
      <MeadowScene
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
        <Button
          type="button"
          size="icon-sm"
          variant="secondary"
          aria-label="Close New Play"
          onClick={onClose}
          className={closeClassName}
        >
          <AppIcon icon={appIcons.actions.close} />
        </Button>
        <div className="px-6 pt-5 text-center sm:px-10">
          <h1
            id={titleId}
            ref={titleRef}
            tabIndex={-1}
            className="title-section outline-none"
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
              <FieldLabel htmlFor="new-play-name">Play name</FieldLabel>
              <Input
                id="new-play-name"
                value={playName}
                maxLength={200}
                onChange={(event) => setPlayName(event.currentTarget.value)}
                placeholder={defaultPlayName}
              />
            </div>
            <div className="flex flex-col gap-1.5">
              <FieldLabel htmlFor="new-play-trainer">Trainer name</FieldLabel>
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
          <NewPlayRules
            ruleChoices={data.rules}
            rules={rules}
            types={types}
            onChange={setRules}
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
          <Button type="button" variant="secondary" onClick={onClose}>
            Cancel
          </Button>
        ) : (
          <Button
            type="button"
            variant="secondary"
            disabled={isPending}
            onClick={() => setStep((current) => (current - 1) as Step)}
          >
            Back
          </Button>
        )}
        {step === 1 ? (
          <Button type="button" disabled={!game} onClick={() => setStep(2)}>
            Next
            <AppIcon icon={appIcons.actions.continue} inline="end" />
          </Button>
        ) : step === 2 ? (
          <Button type="button" onClick={() => setStep(3)}>
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
          <Button type="button" disabled={isPending} onClick={start}>
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

/*
 * New Play when Voydex couldn't read the games: the same card, saying so,
 * with Try again (which reads Mainline again).
 */
export const NewPlayUnavailable = ({ onClose }: { onClose: () => void }) => {
  const router = useRouter();
  const titleId = useId();

  return (
    <section
      aria-labelledby={titleId}
      data-slot="card"
      className="bg-surface mx-auto flex w-full max-w-220 flex-col overflow-hidden rounded-2xl max-sm:rounded-none"
    >
      <MeadowScene
        form="card"
        className="rounded-none sm:rounded-none"
        sceneClassName="h-12 sm:h-14"
      >
        <NewPlaySteps step={1} onStepChange={() => undefined} />
        <Button
          type="button"
          size="icon-sm"
          variant="secondary"
          aria-label="Close New Play"
          onClick={onClose}
          className={closeClassName}
        >
          <AppIcon icon={appIcons.actions.close} />
        </Button>
        <div className="px-6 pt-5 text-center sm:px-10">
          <h1 id={titleId} className="title-section">
            Which game are you playing?
          </h1>
        </div>
        <div
          role="alert"
          className="text-ink-2 text-15 mt-2 flex min-h-56 flex-col items-center justify-center gap-3 px-6 font-semibold sm:min-h-64"
        >
          <p>Voydex couldn&apos;t load the games right now.</p>
          <Button
            type="button"
            size="sm"
            variant="secondary"
            onClick={() => router.refresh()}
          >
            Try again
          </Button>
        </div>
      </MeadowScene>

      <div className="border-line mt-auto flex flex-wrap items-center gap-3 border-t px-5 py-4 sm:px-8">
        <p className="text-ink-2 text-14 mr-auto min-w-0 basis-full font-semibold sm:basis-auto">
          Pick a game to continue
        </p>
        <Button type="button" variant="secondary" onClick={onClose}>
          Cancel
        </Button>
        <Button type="button" disabled>
          Next
          <AppIcon icon={appIcons.actions.continue} inline="end" />
        </Button>
      </div>
    </section>
  );
};
