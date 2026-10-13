import { publicPlayArt } from "@/modules/mainline/public-play-art";
import { publicArt } from "@/modules/reference/public-art";
import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { IntroPage } from "@/features/site/components/intro-page";

export default function Page() {
  return (
    <PublicAppShell>
      <IntroPage art={publicArt} playArt={publicPlayArt} />
    </PublicAppShell>
  );
}
