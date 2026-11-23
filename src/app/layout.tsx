import { ServiceWorkerRegistration } from "@/platform/offline/service-worker-registration";
import { frontDoorScript } from "@/config/front-door";
import { FirstVisitGuard } from "@/shared/components/first-visit-guard";
import { pageOverscrollScript } from "@/shared/utils/page-overscroll";
import { TooltipProvider } from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";
import type { Metadata, Viewport } from "next";
import { nunito } from "./fonts";
import "./globals.css";

export const metadata: Metadata = {
  appleWebApp: { capable: true, title: "Voydex" },
  title: "Voydex",
  description: "A Pokémon companion for tracking and planning playthroughs.",
};

/* The browser's own bar and the phone's status bar take the bar's red (`--action`). */
export const viewport: Viewport = { themeColor: "#cf342b" };

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html
      lang="en"
      className={cn("h-full", nunito.variable)}
      suppressHydrationWarning
    >
      <head>
        <FirstVisitGuard />
        {/* Sends a device that is in the app from the front page back in. */}
        <script dangerouslySetInnerHTML={{ __html: frontDoorScript }} />
        {/* Red past the top when pulled, the wall past the bottom. */}
        <script dangerouslySetInnerHTML={{ __html: pageOverscrollScript }} />
      </head>
      <body
        className="flex min-h-full flex-col antialiased"
        suppressHydrationWarning
      >
        <TooltipProvider>
          <div className="relative flex min-h-full flex-col">{children}</div>
        </TooltipProvider>
        <ServiceWorkerRegistration />
      </body>
    </html>
  );
}
