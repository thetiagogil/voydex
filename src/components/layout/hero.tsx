"use client";

import { Button } from "@/components/ui/button";
import { useDatabaseStatus } from "@/contexts/database-status.context";
import { useClaims } from "@/features/auth/hooks/useAuth";
import { cn } from "@/lib/utils/cn";
import { TriangleAlertIcon } from "lucide-react";
import Link from "next/link";
import { useEffect, useState } from "react";
import { BgImage } from "../shared/bg-image";

type HeroStage = "image" | "resolved";

export const Hero = () => {
  const { data: isAuthenticated, isFetched: isClaimsFetched } = useClaims();
  const { isDbAvailable, isChecking } = useDatabaseStatus();

  const [minDelayReached, setMinDelayReached] = useState(false);
  const [stage, setStage] = useState<HeroStage>("image");

  useEffect(() => {
    const timer = setTimeout(() => setMinDelayReached(true), 400);
    return () => clearTimeout(timer);
  }, []);

  // Resolve once BOTH the min delay has passed AND the health + claims checks are done
  const isAuthSettled = !isChecking && (isDbAvailable ? isClaimsFetched : true);

  useEffect(() => {
    if (minDelayReached && isAuthSettled) {
      setStage("resolved");
    }
  }, [minDelayReached, isAuthSettled]);

  const isDown = !isDbAvailable;

  return (
    <div className="relative flex min-h-screen items-center justify-center overflow-hidden">
      <BgImage isHero />

      <div className="relative z-10 mx-auto max-w-2xl px-6 text-center">
        {/* Title */}
        <h1
          className={cn(
            "text-foreground mb-4 text-5xl font-bold transition-all delay-200 duration-700 ease-out md:text-6xl lg:text-7xl",
            stage !== "resolved"
              ? "translate-y-4 opacity-0"
              : "translate-y-0 opacity-100",
          )}
        >
          <span className="text-primary">Poke</span>
          <span className="text-foreground">tracker</span>
        </h1>

        {/* Subtitle */}
        <p
          className={cn(
            "text-muted-foreground mb-6 text-lg leading-relaxed transition-all delay-400 duration-700 ease-out md:text-xl",
            stage !== "resolved"
              ? "translate-y-4 opacity-0"
              : "translate-y-0 opacity-100",
          )}
        >
          Your ultimate companion for the Pokémon world
        </p>

        {/* Actions — only visible after fully resolved */}
        <div
          className={cn(
            "transition-all delay-600 duration-700 ease-out",
            stage === "resolved"
              ? "translate-y-0 opacity-100"
              : "translate-y-4 opacity-0",
          )}
        >
          {stage === "resolved" && (
            <>
              {isDown ? (
                <div className="flex flex-col items-center gap-4">
                  <div className="bg-destructive/30 border-destructive/30 text-destructive-foreground inline-flex items-center gap-2 rounded-lg border px-4 py-2 text-sm font-medium">
                    <TriangleAlertIcon className="size-4 shrink-0" />
                    <span>
                      Our servers are currently offline, we&apos;re working on
                      it.
                    </span>
                  </div>
                </div>
              ) : (
                <div className="flex flex-col items-center justify-center gap-4 sm:flex-row">
                  <Button asChild size="lg" className="w-full sm:w-auto">
                    {isAuthenticated ? (
                      <Link href="/dashboard">Dashboard</Link>
                    ) : (
                      <Link href="/auth/login">Get Started</Link>
                    )}
                  </Button>

                  <Button
                    asChild
                    variant="outline"
                    size="lg"
                    className="w-full sm:w-auto"
                  >
                    <Link href="/pokedex">Browse Pokédex</Link>
                  </Button>

                  <Button
                    asChild
                    variant="outline"
                    size="lg"
                    className="w-full sm:w-auto"
                  >
                    <Link href="/intro">Learn More</Link>
                  </Button>
                </div>
              )}
            </>
          )}
        </div>
      </div>
    </div>
  );
};
