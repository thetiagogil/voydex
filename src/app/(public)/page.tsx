import { BackpackIcon, CompassIcon } from "lucide-react";
import Link from "next/link";

import { BrandImage } from "@/components/app/brand-image";
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
    <main className="text-foreground min-h-screen">
      <div className="mx-auto flex min-h-screen w-full max-w-7xl flex-col px-4 py-5 sm:px-6 lg:px-8">
        <section className="flex flex-1 items-start justify-center pt-24 pb-14 text-center sm:pt-28 lg:pt-32">
          <div className="flex w-full max-w-5xl flex-col items-center">
            <h1 className="sr-only">Voydex</h1>

            <BrandImage
              width={1886}
              height={1026}
              className="w-24 sm:w-32 lg:w-36"
              layers={[
                {
                  src: "/brand/voydex-mark-primary-mask.png",
                  className: "bg-primary",
                },
                {
                  src: "/brand/voydex-mark-accent-mask.png",
                  className: "bg-accent",
                },
              ]}
            />
            <BrandImage
              width={3564}
              height={1203}
              className="-mt-4 w-full max-w-2xl sm:-mt-8"
              layers={[
                {
                  src: "/brand/voydex-title-primary-mask.png",
                  className: "bg-primary",
                },
              ]}
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
      </div>
    </main>
  );
}
