import { frontPageSections } from "@/config/routes";
import { SiteSectionHead } from "@/features/site/components/site-section-head";
import { StepNumber } from "@/features/site/components/step-number";
import { LogoMark } from "@/shared/components/brand/logo-mark";
import { Card } from "@/shared/components/ui/card";

const installWays = [
  {
    steps: ["Open Voydex in Safari", "Tap Share", "Add to Home Screen"],
    title: "iPhone and iPad",
  },
  {
    steps: [
      "Open Voydex in Chrome or Edge",
      "Open the browser's menu",
      "Install, or Add to Home screen",
    ],
    title: "Android and computer",
  },
] as const;

/* The other apps on the pictured Home Screen: eleven blank tiles. */
const otherApps = Array.from({ length: 11 }, (_, index) => index);

/*
 * What installing gives you: a phone's Home Screen with Voydex on it, its
 * own icon among blank ones. A picture, so one image to a screen reader.
 */
const HomeScreenPicture = () => (
  <div
    role="img"
    aria-label="A phone's Home Screen with the Voydex icon on it"
    className="border-ink bg-band mx-auto w-44 shrink-0 rounded-[1.75rem] border-[5px] px-3.5 pt-5 pb-6 sm:w-48"
  >
    <span className="bg-ink mx-auto mb-4 block h-1.5 w-12 rounded-full" />
    <div className="grid grid-cols-3 gap-x-3 gap-y-2">
      <span className="flex flex-col items-center gap-1">
        <LogoMark className="aspect-square h-auto w-full rounded-[28%]" />
        <span className="text-ink copy-mark leading-none">Voydex</span>
      </span>
      {otherApps.map((app) => (
        <span key={app} className="flex flex-col items-center gap-1">
          <span className="bg-surface block aspect-square w-full rounded-[28%]" />
          <span className="bg-surface block h-1.5 w-3/4 rounded-full" />
        </span>
      ))}
    </div>
  </div>
);

/*
 * Install, on the front page: what it gives you, shown (Voydex on a Home
 * Screen), beside the two ways to put it there as numbered steps. Nothing
 * that isn't there yet.
 */
export const InstallSection = () => (
  <section
    id={frontPageSections.install}
    aria-labelledby="install-title"
    tabIndex={-1}
    className="scroll-mt-6 outline-none"
  >
    <SiteSectionHead
      id="install-title"
      title="Install"
      text="Add Voydex to your Home Screen and it opens like any other app, offline too."
    />
    <Card className="grid items-center gap-x-10 gap-y-6 md:grid-cols-[auto_minmax(0,1fr)]">
      <HomeScreenPicture />
      <div className="grid gap-x-8 gap-y-6 sm:grid-cols-2">
        {installWays.map((way) => (
          <div key={way.title}>
            <h3 className="title-card">{way.title}</h3>
            <ol className="mt-3.5 flex flex-col gap-2">
              {way.steps.map((step, index) => (
                <li
                  key={step}
                  className="copy-body text-ink-2 grid grid-cols-[1.75rem_minmax(0,1fr)] items-center gap-2"
                >
                  <StepNumber number={index + 1} />
                  {step}
                </li>
              ))}
            </ol>
          </div>
        ))}
      </div>
    </Card>
  </section>
);
