import { frontPageSections } from "@/config/routes";
import { SiteSectionHead } from "@/features/site/components/site-section-head";
import { Card } from "@/shared/components/ui/card";

const installSteps = [
  {
    text: "Open Voydex in Safari, tap Share, then Add to Home Screen.",
    title: "iPhone and iPad",
  },
  {
    text: "Open Voydex in Chrome or Edge, open the browser's menu, then choose Install or Add to Home screen.",
    title: "Android and computer",
  },
] as const;

/*
 * Install, on the front page: how to put Voydex on a Home Screen, where it
 * opens like any other app. Two short how-tos and nothing that isn't there
 * yet.
 */
export const InstallSection = () => (
  <section
    id={frontPageSections.install}
    aria-labelledby="install-title"
    className="scroll-mt-6"
  >
    <SiteSectionHead
      id="install-title"
      title="Install"
      text="Add Voydex to your Home Screen and it opens like any other app, offline too."
    />
    <div className="grid gap-4.5 sm:gap-6 md:grid-cols-2">
      {installSteps.map((step) => (
        <Card key={step.title} className="gap-2 p-5 sm:p-6">
          <h3 className="title-card">{step.title}</h3>
          <p className="text-15 text-ink-2 leading-relaxed font-semibold">
            {step.text}
          </p>
        </Card>
      ))}
    </div>
  </section>
);
