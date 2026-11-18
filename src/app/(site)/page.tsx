import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { FrontDoorRedirect } from "@/features/site/components/front-door-redirect";
import { FrontPage } from "@/features/site/components/front-page";
import { publicPlayArt } from "@/modules/mainline/public-play-art";
import { publicArt } from "@/modules/reference/public-art";

/*
 * The front page, on the red band, so its bar is the white pill with the V
 * alone. A device that is in the app is sent straight back in: on a full load
 * by the root layout's script, before anything paints, and from inside the
 * site by `FrontDoorRedirect`.
 */
export default function Page() {
  return (
    <>
      <FrontDoorRedirect />
      <PublicAppShell bar="front">
        <FrontPage art={publicArt} playArt={publicPlayArt} />
      </PublicAppShell>
    </>
  );
}
