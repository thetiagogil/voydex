import {
  BackpackIcon,
  BookOpenCheckIcon,
  CompassIcon,
  HomeIcon,
  SparklesIcon,
} from "lucide-react";
import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { PublicAppShell } from "@/shared/components/app-shell/public-app-shell";
import { buttonVariants } from "@/shared/components/ui/button";

const companionAreas = [
  {
    title: "Mainline",
    description:
      "The place for active play records, teams, milestones, Pokedex progress, and collectibles.",
    icon: BackpackIcon,
  },
  {
    title: "Codex",
    description:
      "A fast read-only reference for Pokémon, games, and generations when you need an answer.",
    icon: BookOpenCheckIcon,
  },
  {
    title: "Future modules",
    description:
      "New tools can join the same shell without turning Voydex into a Mainline-only app.",
    icon: SparklesIcon,
  },
] as const;

export const IntroPage = () => {
  return (
    <PublicAppShell>
      <section className="grid w-full min-w-0 flex-1 items-center gap-10 overflow-hidden py-8 lg:grid-cols-[minmax(0,0.95fr)_minmax(22rem,0.72fr)] lg:py-12">
        <div className="w-full max-w-[calc(100vw-2rem)] min-w-0 sm:max-w-2xl">
          <h1 className="text-3xl leading-tight font-bold tracking-normal sm:text-5xl">
            A home base for every journey you decide to keep.
          </h1>
          <p className="text-foreground/75 mt-5 w-full text-base leading-7 sm:text-lg">
            Voydex starts with Mainline and Codex, but the shape is bigger than
            one module. It keeps play records, reference data, and future
            companion tools close without making the home page noisy.
          </p>
          <div className="mt-8 flex flex-col gap-3 sm:flex-row">
            <Link
              href={appRoutes.appEntry}
              className={buttonVariants({ size: "lg", className: "h-11" })}
            >
              <CompassIcon data-icon="inline-start" aria-hidden />
              Enter the app
            </Link>
            <Link
              href={appRoutes.home}
              className={buttonVariants({
                variant: "ghost",
                size: "lg",
                className: "h-11",
              })}
            >
              <HomeIcon data-icon="inline-start" aria-hidden />
              Back home
            </Link>
          </div>
        </div>

        <aside className="ring-app-surface-border bg-card/70 w-full max-w-[calc(100vw-2rem)] min-w-0 overflow-hidden rounded-lg p-4 shadow-[var(--app-surface-shadow)] ring-1 backdrop-blur-md lg:max-w-full lg:justify-self-end">
          <div className="flex flex-col">
            {companionAreas.map((area) => {
              const Icon = area.icon;
              return (
                <div
                  key={area.title}
                  className="border-app-surface-border/70 flex items-start gap-3 border-t py-4 first:border-t-0 first:pt-0 last:pb-0"
                >
                  <span className="bg-primary/10 text-primary flex size-9 shrink-0 items-center justify-center rounded-lg">
                    <Icon className="size-4" aria-hidden />
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
    </PublicAppShell>
  );
};
