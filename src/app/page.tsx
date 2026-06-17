import { ArrowRightIcon, BookOpenIcon } from "lucide-react";
import Link from "next/link";

import { AppBackground } from "@/components/app/app-background";
import { DatabaseHealthBanner } from "@/components/app/database-health-banner";
import { Logo } from "@/components/app/logo";
import { buttonVariants } from "@/components/ui/button";
import { cn } from "@/lib/utils";

export default function Home() {
  return (
    <main className="relative isolate min-h-screen overflow-hidden">
      <AppBackground variant="hero" />
      <div className="relative z-10 mx-auto flex min-h-screen w-full max-w-7xl flex-col px-4 py-5 text-white sm:px-6 lg:px-8">
        <header className="flex items-center justify-between gap-4">
          <Link href="/" aria-label="Voydex home">
            <Logo
              showText={false}
              className="text-white drop-shadow-[0_2px_12px_rgba(0,0,0,0.38)]"
              markClassName="border-white/35 bg-white/90"
            />
          </Link>
          <Link
            href="/login"
            className={cn(
              buttonVariants({ variant: "outline" }),
              "border-white/30 bg-white/16 text-white shadow-sm backdrop-blur-md hover:bg-white/24 hover:text-white",
            )}
          >
            Sign in
          </Link>
        </header>

        <section className="flex flex-1 items-end pt-16 pb-20 sm:pb-24 lg:pb-28">
          <div className="max-w-2xl">
            <p className="mb-3 text-sm font-semibold tracking-[0.22em] text-white/82 uppercase drop-shadow-[0_2px_10px_rgba(0,0,0,0.45)]">
              Pokemon companion
            </p>
            <h1 className="text-6xl font-black tracking-tight text-balance drop-shadow-[0_5px_24px_rgba(0,0,0,0.42)] sm:text-7xl lg:text-8xl">
              Voydex
            </h1>
            <p className="mt-4 max-w-xl text-xl font-medium text-white/88 drop-shadow-[0_3px_16px_rgba(0,0,0,0.45)] sm:text-2xl">
              Press start on your next adventure.
            </p>
            <div className="mt-8 flex flex-col gap-3 sm:flex-row">
              <Link
                href="/dashboard"
                className={cn(
                  buttonVariants({ size: "lg" }),
                  "h-11 bg-white text-slate-950 shadow-lg shadow-black/20 hover:bg-white/90",
                )}
              >
                Open app
                <ArrowRightIcon data-icon="inline-end" />
              </Link>
              <Link
                href="/pokedex"
                className={cn(
                  buttonVariants({ variant: "outline", size: "lg" }),
                  "h-11 border-white/30 bg-white/16 text-white shadow-sm backdrop-blur-md hover:bg-white/24 hover:text-white",
                )}
              >
                Pokedex
                <BookOpenIcon data-icon="inline-end" />
              </Link>
            </div>
          </div>
        </section>

        <div className="pb-6">
          <DatabaseHealthBanner />
        </div>
      </div>
    </main>
  );
}
