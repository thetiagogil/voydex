import {
  BackpackIcon,
  BookOpenCheckIcon,
  CheckCircle2Icon,
  SparklesIcon,
} from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
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
    title: "Plays",
    description: "A focused record for saves, teams, progress, and memories.",
    icon: BackpackIcon,
  },
  {
    title: "Codex",
    description: "A fast reference layer for Pokemon, games, and generations.",
    icon: BookOpenCheckIcon,
  },
  {
    title: "Future modules",
    description:
      "A home that can grow beyond Mainline without bending every module into the same shape.",
    icon: SparklesIcon,
  },
] as const;

const workflowSteps = [
  "Start with the module that matches what you are playing.",
  "Keep the important records close to the game, not scattered across notes.",
  "Return later to understand the journey without reopening old saves.",
] as const;

export default function IntroPage() {
  return (
    <main className="text-foreground min-h-screen">
      <AppNavbar />

      <div className="mx-auto flex min-h-[calc(100vh-4rem)] w-full max-w-7xl flex-col px-4 sm:px-6 lg:px-8">
        <section className="grid flex-1 items-center gap-10 py-12 lg:grid-cols-[minmax(0,0.95fr)_minmax(22rem,0.75fr)] lg:py-16">
          <div className="max-w-2xl">
            <h1 className="text-4xl leading-tight font-bold tracking-normal sm:text-5xl">
              A quieter home for Pokemon playthroughs.
            </h1>
            <p className="text-foreground/75 mt-5 text-base leading-7 sm:text-lg">
              Voydex keeps the useful parts of a journey together: current
              plays, reference data, story progress, collections, and room for
              future modules that deserve their own shape.
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

          <Card className="bg-card/88">
            <CardHeader>
              <CardTitle>Built around memory</CardTitle>
              <CardDescription className="leading-6">
                A play should become more useful over time: a clean record of
                what happened, what changed, and what is still left to finish.
              </CardDescription>
            </CardHeader>

            <CardContent className="grid gap-1">
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
            </CardContent>
          </Card>
        </section>

        <section className="grid gap-3 pb-10 md:grid-cols-3">
          {companionAreas.map((feature) => {
            const Icon = feature.icon;

            return (
              <div
                key={feature.title}
                className="bg-card/72 grid grid-cols-[auto_minmax(0,1fr)] gap-3 rounded-lg border p-4 backdrop-blur-sm"
              >
                <div className="bg-primary/10 text-primary flex size-10 shrink-0 items-center justify-center rounded-lg">
                  <Icon aria-hidden />
                </div>
                <div>
                  <h2 className="font-medium">{feature.title}</h2>
                  <p className="text-muted-foreground mt-1 text-sm leading-6">
                    {feature.description}
                  </p>
                </div>
              </div>
            );
          })}
        </section>
      </div>
    </main>
  );
}
