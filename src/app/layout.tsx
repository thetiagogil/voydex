import {
  DatabaseHealthProvider,
  DatabaseHealthStatus,
} from "@/features/system/components/database-health-status";
import { FirstVisitGuard } from "@/shared/components/first-visit-guard";
import { TooltipProvider } from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";
import type { Metadata } from "next";
import { nunito } from "./fonts";
import "./globals.css";

export const metadata: Metadata = {
  title: "Voydex",
  description: "A Pokémon companion for tracking and planning playthroughs.",
};

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
      </head>
      <body
        className="flex min-h-full flex-col antialiased"
        suppressHydrationWarning
      >
        <DatabaseHealthProvider />
        <TooltipProvider>
          <div className="relative flex min-h-full flex-col">{children}</div>
          <DatabaseHealthStatus />
        </TooltipProvider>
      </body>
    </html>
  );
}
