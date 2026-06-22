import { CompassIcon } from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { createServerSupabaseClient } from "@/lib/supabase/server";
import { getOptionalUserEmail } from "@/lib/supabase/auth";
import { HomeAppEntryButton } from "@/app/(public)/home-app-entry-button";
import { BrandImage } from "@/shared/components/app/brand-image";
import { buttonVariants } from "@/shared/components/ui/button";

const homeActions = [
  {
    href: appRoutes.intro,
    label: "Learn more",
    icon: CompassIcon,
  },
] as const;

export default async function Home() {
  const supabase = await createServerSupabaseClient();
  const userEmail = await getOptionalUserEmail(supabase);
  const isAuthenticated = Boolean(userEmail);

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

            <p className="text-foreground/78 -mt-1 max-w-xl text-base leading-7 sm:text-lg">
              Keep every playthrough close: teams, milestones, notes, and
              reference data in one quiet place.
            </p>

            <div className="mt-8 flex w-full max-w-2xl flex-col items-stretch justify-center gap-3 sm:flex-row sm:items-center">
              <HomeAppEntryButton isAuthenticated={isAuthenticated} />
              {homeActions.map((action) => {
                const Icon = action.icon;

                return (
                  <Link
                    key={action.href}
                    href={action.href}
                    className={buttonVariants({
                      variant: "outline",
                      size: "lg",
                      className: "min-w-0 sm:min-w-48",
                    })}
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
