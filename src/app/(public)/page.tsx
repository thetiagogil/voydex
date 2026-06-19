import { BackpackIcon, CompassIcon } from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import { BrandImage } from "@/shared/components/app/brand-image";
import { buttonVariants } from "@/shared/components/ui/button";

const homeActions = [
  {
    href: appRoutes.appEntry,
    label: "Enter the app",
    icon: BackpackIcon,
    variant: "primary",
  },
  {
    href: appRoutes.intro,
    label: "Learn more",
    icon: CompassIcon,
    variant: "secondary",
  },
] as const;

export default function Home() {
  return (
    <main className="text-foreground min-h-screen">
      <div className="mx-auto flex min-h-screen w-full max-w-7xl flex-col px-4 py-5 sm:px-6 lg:px-8">
        <section className="flex flex-1 items-start justify-center pt-24 pb-14 text-center sm:pt-36 lg:pt-40">
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
                  className: "bg-primary",
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
                      "min-w-0 sm:min-w-48",
                    )}
                  >
                    <Icon data-icon="inline-start" aria-hidden />
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
