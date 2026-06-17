import {
  ArrowRightIcon,
  BackpackIcon,
  BookOpenIcon,
  CompassIcon,
} from "lucide-react";
import Image from "next/image";
import Link from "next/link";

import { AppBackground } from "@/components/app/app-background";
import { DatabaseHealthBanner } from "@/components/app/database-health-banner";
import { buttonVariants } from "@/components/ui/button";
import { cn } from "@/lib/utils";

const heroActions = [
  {
    href: "/dashboard",
    label: "Open App",
    icon: BackpackIcon,
    endIcon: ArrowRightIcon,
    variant: "primary",
  },
  {
    href: "/pokedex",
    label: "Pokedex",
    icon: BookOpenIcon,
    variant: "secondary",
  },
  {
    href: "/intro",
    label: "Learn More",
    icon: CompassIcon,
    variant: "secondary",
  },
] as const;

export default function Home() {
  return (
    <main className="relative isolate min-h-screen overflow-hidden text-[#064e5a]">
      <AppBackground variant="hero" />
      <div className="relative z-10 mx-auto flex min-h-screen w-full max-w-400 flex-col px-4 py-5 sm:px-6 lg:px-8">
        <section className="flex flex-1 items-start justify-center pt-[12vh] pb-14 text-center sm:pt-[13vh] lg:pt-[14vh] xl:pt-[15vh]">
          <div className="flex w-full max-w-5xl flex-col items-center">
            <h1 className="sr-only">Voydex</h1>

            <Image
              src="/brand/voydex-mark.png"
              alt=""
              width={1886}
              height={1026}
              priority
              unoptimized
              className="h-auto w-[clamp(7rem,14vw,12rem)]"
            />
            <Image
              src="/brand/voydex-title.png"
              alt=""
              width={3564}
              height={1203}
              priority
              unoptimized
              className="-mt-6 h-auto w-[min(88vw,50rem)] sm:-mt-10"
            />
            <p className="-mt-5 text-[clamp(1.35rem,2.4vw,2.1rem)] leading-tight font-bold text-[#064e5a] sm:-mt-7">
              Your adventure companion
            </p>

            <div className="mt-8 flex w-full max-w-4xl flex-col items-stretch justify-center gap-4 sm:flex-row sm:items-center">
              {heroActions.map((action) => {
                const Icon = action.icon;
                const EndIcon = "endIcon" in action ? action.endIcon : null;
                const isPrimary = action.variant === "primary";

                return (
                  <Link
                    key={action.href}
                    href={action.href}
                    className={cn(
                      buttonVariants({
                        variant: isPrimary ? "default" : "outline",
                        size: "lg",
                      }),
                      "h-16 min-w-0 rounded-2xl px-7 text-lg font-bold shadow-[0_12px_28px_rgba(5,70,79,0.16)] backdrop-blur-md transition-transform hover:-translate-y-0.5 active:translate-y-0 sm:min-w-56 lg:min-w-[min(17vw,16.5rem)] [&_svg:not([class*='size-'])]:size-7",
                      isPrimary
                        ? "border-transparent bg-[#006b77] text-white hover:bg-[#005f6a] hover:text-white"
                        : "border-[#064e5a]/24 bg-white/88 text-[#064e5a] hover:bg-white hover:text-[#064e5a]",
                    )}
                  >
                    <Icon data-icon="inline-start" />
                    {action.label}
                    {EndIcon ? <EndIcon data-icon="inline-end" /> : null}
                  </Link>
                );
              })}
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
