import Link from "next/link";
import { cn } from "@/shared/utils/cn";
import { appRoutes } from "@/config/routes";
import { buttonVariants } from "@/shared/components/ui/button";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

const companionAreas = [
  {
    title: "Keep the run alive",
    description:
      "Track the team, milestones, Pokédex progress, collectibles, and story beats that make each playthrough yours.",
    icon: appIcons.product.play,
  },
  {
    title: "Find the reference fast",
    description:
      "Browse Pokémon, games, generations, availability, forms, and related data without leaving the same app.",
    icon: appIcons.product.reference,
  },
  {
    title: "Let the world expand",
    description:
      "Voydex is built as a companion system, so new modules can join later without making the app feel stitched together.",
    icon: appIcons.actions.learnMore,
  },
] as const;

const flowSteps = [
  {
    title: "Start with the adventure",
    description:
      "Create a play record around a game, trainer, team, and the progress that matters for that run.",
    icon: appIcons.product.journey,
  },
  {
    title: "Update it as you go",
    description:
      "Mark milestones, seen and caught species, collectible progress, and the details you would otherwise lose.",
    icon: appIcons.product.milestone,
  },
  {
    title: "Return with context",
    description:
      "Open old runs with enough history to remember what happened, what changed, and where to continue.",
    icon: appIcons.actions.search,
  },
] as const;

export const IntroPage = () => {
  return (
    <div className="flex w-full min-w-0 flex-1 flex-col gap-14 overflow-hidden py-8 lg:py-12">
      <section className="grid w-full min-w-0 items-center gap-10 lg:grid-cols-[minmax(0,0.96fr)_minmax(22rem,0.74fr)]">
        <div className="w-full max-w-88 min-w-0 sm:max-w-3xl">
          <h1 className="max-w-88 text-3xl leading-tight font-bold tracking-normal sm:max-w-3xl sm:text-5xl">
            Remember the adventure behind every Pokémon run.
          </h1>
          <div className="text-foreground/76 mt-5 grid max-w-88 gap-4 text-base leading-7 sm:max-w-2xl sm:text-lg">
            <p>
              Voydex is a companion for playthroughs worth keeping: the team you
              built, the milestones you cleared, the Pokédex you filled, and the
              little decisions that made the journey feel like yours.
            </p>
            <p>
              It starts with a public Codex and a private Mainline workspace,
              with room for future modules to grow inside the same clean space.
            </p>
          </div>
          <div className="mt-8 flex w-full max-w-88 flex-col gap-3 sm:max-w-none sm:flex-row">
            <Link
              href={appRoutes.appEntry}
              className={cn(buttonVariants({ size: "lg" }), "w-full sm:w-auto")}
            >
              <AppIcon
                icon={appIcons.actions.enterApp}
                inline="start"
                aria-hidden
              />
              Enter the app
            </Link>
            <Link
              href={appRoutes.codexPokemon}
              className={cn(
                buttonVariants({ size: "lg", variant: "outline" }),
                "w-full sm:w-auto",
              )}
            >
              <AppIcon
                icon={appIcons.actions.browseCodex}
                inline="start"
                aria-hidden
              />
              Browse Codex
            </Link>
          </div>
        </div>

        <aside className="bg-surface shadow-card w-full max-w-88 min-w-0 overflow-hidden rounded-xl p-4 sm:max-w-[calc(100vw-3rem)] lg:max-w-full lg:justify-self-end">
          <div className="flex flex-col">
            {companionAreas.map((area) => {
              return (
                <div
                  key={area.title}
                  className="border-line flex items-start gap-3 border-t py-4 first:border-t-0 first:pt-0 last:pb-0"
                >
                  <span className="bg-primary/10 text-primary flex size-9 shrink-0 items-center justify-center rounded-lg">
                    <AppIcon icon={area.icon} className="size-4" aria-hidden />
                  </span>
                  <div className="min-w-0">
                    <h2 className="text-sm font-medium">{area.title}</h2>
                    <p className="text-muted-foreground mt-1 text-sm leading-6">
                      {area.description}
                    </p>
                  </div>
                </div>
              );
            })}
          </div>
        </aside>
      </section>

      <section className="bg-surface shadow-card w-full max-w-88 overflow-hidden rounded-xl p-5 sm:max-w-[calc(100vw-3rem)] sm:p-6 lg:max-w-none">
        <div className="grid gap-6 lg:grid-cols-[minmax(0,0.58fr)_minmax(0,1fr)] lg:items-start">
          <div className="max-w-xl">
            <h2 className="text-2xl leading-tight font-semibold tracking-normal sm:text-3xl">
              Built for the moment you play and the memory you return to.
            </h2>
            <p className="text-muted-foreground mt-4 text-sm leading-6 sm:text-base">
              Voydex keeps the practical pieces close enough to use during a
              session, then preserves the shape of the run after the credits. It
              should feel like a living archive, not a spreadsheet you have to
              maintain.
            </p>
          </div>

          <div className="grid gap-3 sm:grid-cols-3">
            {flowSteps.map((step) => {
              return (
                <article
                  key={step.title}
                  className="border-line bg-surface-2 rounded-lg border p-4"
                >
                  <AppIcon
                    icon={step.icon}
                    className="text-primary size-4"
                    aria-hidden
                  />
                  <h3 className="mt-4 text-sm font-medium">{step.title}</h3>
                  <p className="text-muted-foreground mt-2 text-sm leading-6">
                    {step.description}
                  </p>
                </article>
              );
            })}
          </div>
        </div>
      </section>
    </div>
  );
};
