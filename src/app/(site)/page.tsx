import { frontDoorScript } from "@/config/front-door";
import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { FrontDoorRedirect } from "@/features/site/components/front-door-redirect";
import { FrontPage } from "@/features/site/components/front-page";
import { publicPlayArt } from "@/modules/mainline/public-play-art";
import { publicArt } from "@/modules/reference/public-art";

/*
 * The front page. Its first line is a script that sends a device that has
 * opened the app straight back in, before anything paints.
 */
export default function Page() {
  return (
    <>
      <script dangerouslySetInnerHTML={{ __html: frontDoorScript }} />
      <FrontDoorRedirect />
      <PublicAppShell>
        <FrontPage art={publicArt} playArt={publicPlayArt} />
      </PublicAppShell>
    </>
  );
}
