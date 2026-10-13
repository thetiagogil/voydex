import { publicPlayArt } from "@/modules/mainline/public-play-art";
import { publicArt } from "@/modules/reference/public-art";
import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { HomeMeadow, HomePage } from "@/features/site/components/home-page";

export default function Page() {
  return (
    <PublicAppShell showBrandName={false} hero={<HomeMeadow art={publicArt} />}>
      <HomePage art={publicArt} playArt={publicPlayArt} />
    </PublicAppShell>
  );
}
