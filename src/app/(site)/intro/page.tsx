import { BadgeStamp } from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import { publicArt } from "@/modules/reference/shared/data/public-art";
import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { IntroPage } from "@/features/site/components/intro-page";

export default function Page() {
  return (
    <PublicAppShell>
      <IntroPage
        art={publicArt}
        badgeStamp={({ tilt, type }) => (
          <BadgeStamp label="" state={{ kind: "badge", type }} tilt={tilt} />
        )}
      />
    </PublicAppShell>
  );
}
