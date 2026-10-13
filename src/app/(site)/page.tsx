import { publicArt } from "@/modules/reference/shared/data/public-art";
import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { HomeMeadow, HomePage } from "@/features/site/components/home-page";

export default function Page() {
  return (
    <PublicAppShell hero={<HomeMeadow art={publicArt} />}>
      <HomePage art={publicArt} />
    </PublicAppShell>
  );
}
