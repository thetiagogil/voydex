import type { PokedexMode } from "@/config/play-tracking";
import { TextLink } from "@/shared/components/text-link";
import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { cn } from "@/shared/utils/cn";

type FirstStep = {
  description: string;
  done: boolean;
  /* Where the step is done; a finished step has no link. */
  href?: string;
  title: string;
};

/*
 * A brand-new Play's first steps (v3 `.fstep`): choose your partner, add the
 * Pokémon you catch, mark your Pokédex. A finished step wears a check; an
 * open one links to where it's done.
 */
export const FirstStepsSection = ({
  addedCount,
  partnerName,
  playId,
  pokedexMode,
}: {
  /* Pokémon on the team besides the partner. */
  addedCount: number;
  partnerName: string | null;
  playId: string;
  pokedexMode: PokedexMode;
}) => {
  const steps: FirstStep[] = [
    {
      description: partnerName
        ? `${partnerName} chose you`
        : "Your first milestone",
      done: Boolean(partnerName),
      title: "Choose your partner",
    },
    {
      description: addedCount
        ? `${addedCount} added so far`
        : "Your team grows as you play",
      done: addedCount > 0,
      href: appRoutes.mainlinePlayTeamAdd(playId),
      title: "Add the Pokémon you catch",
    },
    {
      description:
        pokedexMode === "caught_only"
          ? "Tap what you catch"
          : "Tap what you catch and what you see",
      done: false,
      href: appRoutes.mainlinePlayProgressPokedex(playId),
      title: "Mark your Pokédex",
    },
  ];
  const doneCount = steps.filter((step) => step.done).length;

  return (
    <DetailSectionCard
      title="First steps"
      aside={`${doneCount} of ${steps.length}`}
      contentClassName="pt-0"
    >
      <ol className="grid">
        {steps.map((step, index) => (
          <li
            key={step.title}
            className="grid grid-cols-[36px_minmax(0,1fr)_auto] items-center gap-3.5 py-3.5"
          >
            <span
              aria-hidden
              className={cn(
                "text-14 grid size-9 place-items-center rounded-full font-extrabold tabular-nums",
                step.done
                  ? "bg-ok-soft text-ok-deep"
                  : "bg-surface-2 text-ink-2",
              )}
            >
              {step.done ? (
                <AppIcon icon={appIcons.status.active} />
              ) : (
                index + 1
              )}
            </span>
            <span className="grid min-w-0 gap-0.5">
              <b
                className={cn(
                  "text-15 font-extrabold",
                  step.done && "text-ink-2",
                )}
              >
                <span className="sr-only">
                  {step.done ? "Done: " : `Step ${index + 1}: `}
                </span>
                {step.title}
              </b>
              <span className="text-ink-2 text-13 font-semibold">
                {step.description}
              </span>
            </span>
            {step.href && !step.done ? (
              <TextLink href={step.href} arrow="forward">
                Go
                <span className="sr-only"> to {step.title.toLowerCase()}</span>
              </TextLink>
            ) : (
              <span />
            )}
          </li>
        ))}
      </ol>
    </DetailSectionCard>
  );
};
