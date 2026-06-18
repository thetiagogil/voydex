import {
  BackpackIcon,
  BookOpenCheckIcon,
  CheckCircle2Icon,
  MapIcon,
} from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { AppNavbar } from "@/shared/components/app/app-navbar";
import { buttonVariants } from "@/shared/components/ui/button";
import { surfaceClassNames } from "@/shared/components/ui/surface";
import { cn } from "@/lib/utils";

const introFeatures = [
  {
    title: "Plays",
    description:
      "Keep each adventure centered around its game, team, and progress.",
    icon: BackpackIcon,
  },
  {
    title: "Pokedex",
    description:
      "Browse game-aware Pokemon data so planning can happen before a run begins.",
    icon: BookOpenCheckIcon,
  },
  {
    title: "Planning",
    description:
      "Draft possible teams by generation and game, then turn those ideas into real plays.",
    icon: MapIcon,
  },
] as const;

const workflowSteps = [
  "Choose the game or module you want to track.",
  "Build the play record around its team, story beats, and collectibles.",
  "Review progress later without reopening old notes or consoles.",
] as const;

export default function IntroPage() {
  return (
    <main className="text-foreground min-h-screen">
      <AppNavbar />

      <div className="mx-auto flex min-h-[calc(100vh-4rem)] w-full max-w-7xl flex-col px-4 sm:px-6 lg:px-8">
        <section className="grid flex-1 items-center gap-10 py-12 lg:grid-cols-2 lg:py-16">
          <div className="max-w-2xl">
            <h1 className="mt-4 text-4xl leading-tight font-bold tracking-tight sm:text-5xl">
              One place for every Pokemon playthrough.
            </h1>
            <p className="text-foreground/75 mt-5 text-base leading-7 sm:text-lg">
              Voydex is being shaped as a calm record for runs, teams, story
              progress, collectibles, Pokedex completion, and future team plans.
            </p>
            <div className="mt-8 flex flex-col gap-3 sm:flex-row">
              <Link
                href={appRoutes.appEntry}
                className={cn(buttonVariants({ size: "lg" }), "h-11")}
              >
                Enter the app
              </Link>
              <Link
                href={appRoutes.home}
                className={cn(
                  buttonVariants({ variant: "ghost", size: "lg" }),
                  "h-11",
                )}
              >
                Back home
              </Link>
            </div>
          </div>

          <div className={cn(surfaceClassNames.panel, "rounded-lg p-5 sm:p-6")}>
            <div>
              <h2 className="text-lg font-semibold">Built around history</h2>
              <p className="text-muted-foreground mt-2 leading-6">
                The app treats each play as a timeline of decisions, milestones,
                and team changes, so a finished run stays useful after the
                credits.
              </p>
            </div>

            <div className="mt-6 grid gap-1">
              {workflowSteps.map((step) => (
                <div
                  key={step}
                  className="flex items-start gap-3 border-t py-4 first:border-t-0 first:pt-0 last:pb-0"
                >
                  <CheckCircle2Icon
                    className="text-primary mt-0.5 size-5 shrink-0"
                    aria-hidden
                  />
                  <p className="text-sm leading-6">{step}</p>
                </div>
              ))}
            </div>
          </div>
        </section>

        <section className="grid gap-4 py-8 md:grid-cols-3">
          {introFeatures.map((feature) => {
            const Icon = feature.icon;

            return (
              <article
                key={feature.title}
                className={cn(
                  surfaceClassNames.panel,
                  "flex gap-3 rounded-lg p-4",
                )}
              >
                <div className="bg-primary/10 text-primary flex size-10 shrink-0 items-center justify-center rounded-lg">
                  <Icon className="size-5" aria-hidden />
                </div>
                <div>
                  <h2 className="font-semibold">{feature.title}</h2>
                  <p className="text-muted-foreground mt-1 text-sm leading-6">
                    {feature.description}
                  </p>
                </div>
              </article>
            );
          })}
        </section>
      </div>
    </main>
  );
}
