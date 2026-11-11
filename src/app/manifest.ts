import type { MetadataRoute } from "next";

import { appRoutes } from "@/config/routes";

/* Written once by the build, a plain file like every page. */
export const dynamic = "force-static";

/*
 * What makes Voydex installable: from the Home Screen it opens as its own
 * app, and the browser keeps its data (Safari clears a site's data after
 * seven days unused unless it is installed).
 */
export default function manifest(): MetadataRoute.Manifest {
  return {
    background_color: "#ffffff",
    description: "A Pokémon companion for tracking and planning playthroughs.",
    display: "standalone",
    icons: [
      { sizes: "512x512", src: "/icon.png", type: "image/png" },
      {
        sizes: "any",
        src: "/brand/voydex-app-icon.svg",
        type: "image/svg+xml",
      },
    ],
    name: "Voydex",
    scope: "/",
    short_name: "Voydex",
    start_url: appRoutes.mainline,
    theme_color: "#ffffff",
  };
}
