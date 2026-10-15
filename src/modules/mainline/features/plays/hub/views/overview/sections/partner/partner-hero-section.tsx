"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { OverviewRecordButton } from "@/modules/mainline/features/plays/hub/views/overview/client/overview-recording";
import {
  getOverviewMilestoneWhere,
  type OverviewMilestone,
} from "@/modules/mainline/features/plays/hub/views/overview/data/overview-milestones-mapper";
import type {
  OverviewPartnerChoice,
  OverviewPartnerOption,
} from "@/modules/mainline/features/plays/hub/views/overview/data/partner-choice-mapper";
import {
  choosePlayPartnerAction,
  undoPlayPartnerAction,
} from "@/modules/mainline/features/plays/shared/server/play-partner-action";
import {
  ObjectiveCard,
  ObjectiveEyebrow,
  objectiveTitleClassNames,
} from "@/modules/mainline/features/plays/shared/components/objective-card";
import {
  PokemonCard,
  pokemonCardPickedClassName,
} from "@/modules/reference/features/pokemon/components/pokemon-card";
import { PokemonSticker } from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

const titleId = "partner-hero-title";

const getOptionTypes = (option: OverviewPartnerOption) =>
  [option.primaryType, option.secondaryType].filter((type) => type !== null);

const getOptionTypeSlug = (option: OverviewPartnerOption) =>
  option.primaryType && isPokemonTypeSlug(option.primaryType.slug)
    ? option.primaryType.slug
    : null;

/*
 * A brand-new Play's hero (v3 `.fresh-hero`): which partner you chose. The
 * options are plain cards; tapping one picks it (its type and a ring), and
 * "Choose {name}" in the footer records it, as on Home and Start a Play.
 * The recorded partner becomes your sticker and pops once, the others step
 * back, and the toast offers Undo.
 * Once chosen, the next milestone waits under the rule with Record.
 */
export const PartnerHeroSection = ({
  nextMilestone,
  nextPosition,
  partner,
  playId,
}: {
  nextMilestone: OverviewMilestone | null;
  nextPosition: { sequence: number; total: number } | null;
  partner: OverviewPartnerChoice;
  playId: string;
}) => {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();
  const [pickedOptionId, setPickedOptionId] = useState<number | null>(null);
  const [poppingOptionId, setPoppingOptionId] = useState<number | null>(null);
  const chosen = partner.isRecorded
    ? (partner.options.find(
        (option) => option.decisionOptionId === partner.chosenOptionId,
      ) ?? null)
    : null;
  const picked =
    partner.options.find(
      (option) => option.decisionOptionId === pickedOptionId,
    ) ?? null;
  const position = `Milestone ${partner.position.sequence} of ${partner.position.total}`;

  const undo = (addedPlayPokemonId: string | null) => {
    void undoPlayPartnerAction({
      addedPlayPokemonId,
      milestoneId: partner.milestoneId,
      playId,
    }).then((result) => {
      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      toast.success(result.message);
      router.refresh();
    });
  };

  const record = (option: OverviewPartnerOption) => {
    startTransition(async () => {
      const result = await choosePlayPartnerAction({
        decisionOptionId: option.decisionOptionId,
        milestoneId: partner.milestoneId,
        playId,
      });

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      setPickedOptionId(null);
      setPoppingOptionId(option.decisionOptionId);
      toast.success(`${result.partnerName} is your partner`, {
        action: {
          label: "Undo",
          onClick: () => undo(result.addedPlayPokemonId),
        },
      });
      router.refresh();
    });
  };

  return (
    <ObjectiveCard
      titleId={titleId}
      footer={
        chosen ? (
          nextMilestone?.milestone_id != null ? (
            <>
              <span className="grid min-w-0 gap-0.5">
                <span className="text-ink-3 text-13 font-extrabold">
                  Next
                  {nextPosition
                    ? ` · Milestone ${nextPosition.sequence} of ${nextPosition.total}`
                    : null}
                </span>
                <b className="text-ink truncate font-extrabold">
                  {nextMilestone.milestone_name}
                </b>
                {getOverviewMilestoneWhere(nextMilestone) ? (
                  <span className="truncate">
                    {getOverviewMilestoneWhere(nextMilestone)}
                  </span>
                ) : null}
              </span>
              <OverviewRecordButton
                className="ml-auto shrink-0"
                label="Record"
                milestoneId={nextMilestone.milestone_id}
                milestoneName={nextMilestone.milestone_name ?? "Milestone"}
                size="sm"
              />
            </>
          ) : (
            <span>Every milestone recorded.</span>
          )
        ) : (
          <>
            <span>
              <b className="text-ink font-extrabold">Not sure yet?</b> You can
              record your partner later, from Story.
            </span>
            {picked ? (
              <Button
                type="button"
                size="sm"
                className="ml-auto shrink-0"
                disabled={isPending}
                aria-busy={isPending}
                onClick={() => record(picked)}
              >
                {isPending ? <Spinner /> : null}
                Choose {picked.name}
              </Button>
            ) : null}
          </>
        )
      }
    >
      <ObjectiveEyebrow
        icon={chosen ? appIcons.status.active : appIcons.milestones.story}
      >
        {chosen ? `${position} · Recorded` : `${position} · Decision`}
      </ObjectiveEyebrow>
      <h2 id={titleId} className={objectiveTitleClassNames.lg}>
        {chosen
          ? `${chosen.name} is your partner`
          : "Which Pokémon did you choose?"}
      </h2>
      <p className="text-ink-2 font-semibold">
        {chosen
          ? "Your journey starts here."
          : "Every journey starts with a partner. Tap the one you picked, then choose it."}
      </p>

      <ul
        aria-label="Partner choices"
        className="mt-5 grid grid-cols-3 gap-2.5 sm:gap-4"
      >
        {partner.options.map((option) => {
          const isChosen = chosen?.decisionOptionId === option.decisionOptionId;
          const isPicked = pickedOptionId === option.decisionOptionId;

          return (
            <li key={option.decisionOptionId} className="min-w-0">
              {isChosen ? (
                <PokemonSticker
                  variant="compact"
                  className={cn(
                    "size-full",
                    poppingOptionId === option.decisionOptionId &&
                      "animate-pop",
                  )}
                  imageUrl={option.imageUrl}
                  name={option.name}
                  subtitle="Your partner"
                  types={getOptionTypes(option)}
                />
              ) : chosen ? (
                <PokemonCard
                  state="plain"
                  size="fluid"
                  className="opacity-45 hover:translate-y-0"
                  imageAlt=""
                  imageUrl={option.imageUrl}
                  name={option.name}
                  number=""
                  types={getOptionTypes(option)}
                />
              ) : (
                <button
                  type="button"
                  disabled={isPending}
                  aria-pressed={isPicked}
                  aria-label={`${option.name} is my partner`}
                  onClick={() =>
                    setPickedOptionId(isPicked ? null : option.decisionOptionId)
                  }
                  style={getPokemonTypeCssVariables(getOptionTypeSlug(option))}
                  className="focus-visible:outline-focus relative block w-full rounded-lg outline-offset-2 focus-visible:outline-3 focus-visible:outline-solid disabled:cursor-wait"
                >
                  <PokemonCard
                    state="plain"
                    size="fluid"
                    imageAlt=""
                    imageUrl={option.imageUrl}
                    name={option.name}
                    number=""
                    types={getOptionTypes(option)}
                    className={cn(isPicked && pokemonCardPickedClassName)}
                  />
                </button>
              )}
            </li>
          );
        })}
      </ul>
    </ObjectiveCard>
  );
};
