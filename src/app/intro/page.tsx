import {
  ArrowLeftIcon,
  ArrowRightIcon,
  BackpackIcon,
  BookOpenCheckIcon,
  Clock3Icon,
  MapIcon,
} from "lucide-react";
import Link from "next/link";

import { AppBackground } from "@/components/app/app-background";
import { Logo } from "@/components/app/logo";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { buttonVariants } from "@/components/ui/button";
import { cn } from "@/lib/utils";

const introHighlights = [
  {
    title: "Play hub",
    description:
      "Keep each run centered around its team, story progress, collectibles, and completion goals.",
    icon: BackpackIcon,
  },
  {
    title: "Pokedex support",
    description:
      "Browse game-aware Pokemon data so future planning can start before a play begins.",
    icon: BookOpenCheckIcon,
  },
  {
    title: "Progress history",
    description:
      "Preserve the important moments of a play, including team changes and major story beats.",
    icon: Clock3Icon,
  },
  {
    title: "Team planning",
    description:
      "Plan possible teams by generation and game, then bring those plans into real plays.",
    icon: MapIcon,
  },
] as const;

export default function IntroPage() {
  return (
    <main className="relative isolate min-h-screen overflow-hidden">
      <AppBackground />
      <div className="relative z-10 mx-auto flex min-h-screen w-full max-w-6xl flex-col px-4 py-5 sm:px-6 lg:px-8">
        <header className="flex items-center justify-between gap-4">
          <Link href="/" aria-label="Voydex home">
            <Logo />
          </Link>
          <Link
            href="/"
            className={cn(buttonVariants({ variant: "outline" }), "bg-card")}
          >
            <ArrowLeftIcon className="size-4" aria-hidden />
            Home
          </Link>
        </header>

        <section className="grid flex-1 items-center gap-10 py-16 lg:grid-cols-2 lg:py-20">
          <div>
            <p className="text-primary text-sm font-semibold tracking-widest uppercase">
              Adventure companion
            </p>
            <h1 className="text-foreground mt-4 max-w-3xl text-4xl leading-tight font-bold tracking-tight text-balance sm:text-5xl">
              A central record for every Pokemon playthrough.
            </h1>
            <p className="text-muted-foreground mt-5 max-w-2xl text-base leading-7 sm:text-lg">
              Voydex is being built as the place to track plays, teams, story
              progress, collectibles, Pokedex completion, and future team plans
              without reopening every console.
            </p>
            <div className="mt-8 flex flex-col gap-3 sm:flex-row">
              <Link
                href="/dashboard"
                className={cn(buttonVariants({ size: "lg" }), "h-11")}
              >
                Enter App
                <ArrowRightIcon className="size-4" aria-hidden />
              </Link>
            </div>
          </div>

          <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-1">
            {introHighlights.map((highlight) => {
              const Icon = highlight.icon;

              return (
                <Card key={highlight.title}>
                  <CardHeader>
                    <div className="bg-primary/10 text-primary mb-3 flex size-9 items-center justify-center rounded-lg">
                      <Icon className="size-5" />
                    </div>
                    <CardTitle>{highlight.title}</CardTitle>
                  </CardHeader>
                  <CardContent className="text-muted-foreground leading-6">
                    {highlight.description}
                  </CardContent>
                </Card>
              );
            })}
          </div>
        </section>
      </div>
    </main>
  );
}
