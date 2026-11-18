import { frontPageSections } from "@/config/routes";
import { DexLens } from "@/shared/components/brand/dex-lens";
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

/*
 * Install, on the front page: carry the Dex. One band in the Dex's deep red
 * with the icon Voydex wears on a Home Screen (the lens), and the two ways
 * to put it there as numbered steps. Nothing that isn't there yet.
 */
export const InstallSection = () => (
  <section
    id={frontPageSections.install}
    aria-labelledby="install-title"
    tabIndex={-1}
    className="bg-action-lip grid scroll-mt-6 gap-7 rounded-2xl p-5.5 text-white outline-none sm:p-9 lg:grid-cols-[minmax(0,1fr)_minmax(0,1.3fr)] lg:items-center lg:gap-10"
  >
    <div>
      <span
        aria-hidden
        className="bg-action grid size-21 place-items-center rounded-xl sm:size-23"
      >
        <DexLens className="text-12 size-13 sm:size-14" />
      </span>
      <p className="text-13 mt-5 font-extrabold tracking-wider uppercase">
        Install
      </p>
      <h2 id="install-title" className="title-page mt-1.5">
        Carry the Dex
      </h2>
      <p className="text-16 sm:text-17 mt-2.5 max-w-[30em] leading-relaxed font-semibold">
        Add Voydex to your Home Screen and it opens like any other app, offline
        too.
      </p>
    </div>
    <div className="grid gap-4 sm:grid-cols-2">
      {installWays.map((way) => (
        <Card key={way.title} className="text-ink gap-0 p-5">
          <h3 className="title-card">{way.title}</h3>
          <ol className="mt-3.5 flex flex-col gap-2.5">
            {way.steps.map((step, index) => (
              <li
                key={step}
                className="text-15 text-ink-2 grid grid-cols-[1.75rem_minmax(0,1fr)] items-center gap-2.5 font-semibold"
              >
                <span
                  aria-hidden
                  className="bg-surface-2 text-ink text-13 grid size-7 place-items-center rounded-full font-extrabold"
                >
                  {index + 1}
                </span>
                {step}
              </li>
            ))}
          </ol>
        </Card>
      ))}
    </div>
  </section>
);
