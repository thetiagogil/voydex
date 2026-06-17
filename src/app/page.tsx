import { BackpackIcon, CompassIcon } from "lucide-react";
import Image from "next/image";
import Link from "next/link";

import { AppBackground } from "@/components/app/app-background";
import { DatabaseHealthBanner } from "@/components/app/database-health-banner";
import { buttonVariants } from "@/components/ui/button";
import { cn } from "@/lib/utils";

const homeActions = [
  {
    href: "/dashboard",
    label: "Enter App",
    icon: BackpackIcon,
    variant: "primary",
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
    <main className="text-foreground relative isolate min-h-screen overflow-hidden">
      <AppBackground variant="home" />
      <div className="relative z-10 mx-auto flex min-h-screen w-full max-w-7xl flex-col px-4 py-5 sm:px-6 lg:px-8">
        <section className="flex flex-1 items-start justify-center pt-24 pb-14 text-center sm:pt-28 lg:pt-32">
          <div className="flex w-full max-w-5xl flex-col items-center">
            <h1 className="sr-only">Voydex</h1>

            <Image
              src="/brand/voydex-mark.png"
              alt=""
              width={1886}
              height={1026}
              priority
              unoptimized
              className="h-auto w-24 sm:w-32 lg:w-36"
            />
            <Image
              src="/brand/voydex-title.png"
              alt=""
              width={3564}
              height={1203}
              priority
              unoptimized
              className="-mt-4 h-auto w-full max-w-2xl sm:-mt-8"
            />

            <div className="mt-7 flex w-full max-w-2xl flex-col items-stretch justify-center gap-3 sm:flex-row sm:items-center">
              {homeActions.map((action) => {
                const Icon = action.icon;
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
                      "h-14 min-w-0 rounded-xl px-6 text-base font-bold shadow-lg backdrop-blur-md sm:min-w-48",
                      !isPrimary && "bg-card/90",
                    )}
                  >
                    <Icon className="size-5" aria-hidden />
                    {action.label}
                  </Link>
                );
              })}
            </div>
          </div>
        </section>

        <div className="pb-6">
          <DatabaseHealthBanner className="mx-auto max-w-3xl" />
        </div>
      </div>
    </main>
  );
}
