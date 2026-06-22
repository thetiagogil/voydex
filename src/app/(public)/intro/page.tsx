import { BackpackIcon, BookOpenCheckIcon, SparklesIcon } from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { AppNavbar } from "@/shared/components/app/app-navbar";
import { buttonVariants } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

const companionAreas = [
  {
    title: "Active journeys",
    description:
      "Mainline keeps saves, teams, milestones, Pokedex progress, and collectibles tied to the play they belong to.",
    icon: BackpackIcon,
  },
  {
    title: "Reference nearby",
    description:
      "Codex stays fast and read-only: Pokemon, games, and generations without extra planning controls.",
    icon: BookOpenCheckIcon,
  },
  {
    title: "Room to grow",
    description:
      "Future modules can join the same home while keeping their own shape, navigation, and rhythm.",
    icon: SparklesIcon,
  },
] as const;

export default function IntroPage() {
  return (
    <main className="text-foreground min-h-screen">
      <AppNavbar />

      <div className="mx-auto flex min-h-[calc(100vh-4rem)] w-full max-w-7xl flex-col px-4 sm:px-6 lg:px-8">
        <section className="grid flex-1 items-center gap-10 py-12 lg:grid-cols-[minmax(0,0.95fr)_minmax(22rem,0.75fr)] lg:py-16">
          <div className="max-w-2xl">
            <h1 className="text-4xl leading-tight font-bold tracking-normal sm:text-5xl">
              A calm companion for every Pokemon journey.
            </h1>
            <p className="text-foreground/75 mt-5 text-base leading-7 sm:text-lg">
              Voydex keeps the useful parts of a journey together: active plays,
              reference data, story notes, collection progress, and future
              modules that can grow at their own pace.
            </p>
            <div className="mt-8 flex flex-col gap-3 sm:flex-row">
              <Link
                href={appRoutes.appEntry}
                className={buttonVariants({ size: "lg", className: "h-11" })}
              >
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
                Back home
              </Link>
            </div>
          </div>

          <Card className="lg:justify-self-end">
            <CardHeader>
              <CardTitle>What Voydex keeps close</CardTitle>
              <CardDescription className="leading-6">
                A few focused places for the records, references, and future
                tools that belong together.
              </CardDescription>
            </CardHeader>

            <CardContent className="flex flex-col">
              {companionAreas.map((area) => {
                const Icon = area.icon;

                return (
                  <div
                    key={area.title}
                    className="flex items-start gap-3 border-t py-4 first:border-t-0 first:pt-0 last:pb-0"
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
            </CardContent>
          </Card>
        </section>
      </div>
    </main>
  );
}
