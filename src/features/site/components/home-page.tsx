import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { BrandImage } from "@/shared/components/brand/brand-image";
import { HomeAppEntryButton } from "@/shared/components/app-shell/home-app-entry-button";
import { buttonVariants } from "@/shared/components/ui/button";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { getHomePageData } from "@/features/site/server/home-page-query";

const homeActions = [
  {
    href: appRoutes.codexPokemon,
    label: "Browse Codex",
    icon: appIcons.actions.browseCodex,
  },
  {
    href: appRoutes.intro,
    label: "Learn more",
    icon: appIcons.actions.learnMore,
  },
] as const;

export const HomePage = async () => {
  const { isAuthenticated } = await getHomePageData();

  return (
    <main className="text-foreground min-h-screen">
      <div className="mx-auto flex min-h-screen w-full max-w-7xl flex-col px-4 py-5 sm:px-6 lg:px-8">
        <section className="flex w-full min-w-0 flex-1 items-start justify-center overflow-hidden pt-24 pb-14 text-center sm:pt-36 lg:pt-40">
          <div className="flex w-full max-w-[calc(100vw-2rem)] flex-col items-center sm:max-w-5xl">
            <h1 className="sr-only">Voydex</h1>

            <BrandImage
              width={1886}
              height={1026}
              className="w-24 sm:w-28 lg:w-32"
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
              className="-mt-4 w-full max-w-72 sm:-mt-7 sm:max-w-xl"
              layers={[
                {
                  src: "/brand/voydex-title-primary-mask.png",
                  className: "bg-primary",
                },
              ]}
            />

            <p className="text-foreground/78 -mt-1 w-full max-w-88 text-base leading-7 sm:max-w-xl sm:text-lg">
              Keep the story behind every playthrough.
            </p>

            <div className="mt-8 flex w-full max-w-88 flex-col items-stretch justify-center gap-3 sm:max-w-3xl sm:flex-row sm:items-center">
              <HomeAppEntryButton isAuthenticated={isAuthenticated} />
              {homeActions.map((action) => {
                return (
                  <Link
                    key={action.href}
                    href={action.href}
                    className={buttonVariants({
                      variant: "outline",
                      size: "lg",
                      className: "min-w-0 sm:min-w-40",
                    })}
                  >
                    <AppIcon icon={action.icon} inline="start" aria-hidden />
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
};
