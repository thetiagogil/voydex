import { AppBackground } from "@/features/app-shell/components/app-background";
import {
  DatabaseHealthProvider,
  DatabaseHealthStatus,
} from "@/features/system/components/database-health-status";
import { TooltipProvider } from "@/shared/components/ui/tooltip";
import type { Metadata } from "next";
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
    <html lang="en" className="h-full" suppressHydrationWarning>
      <body
        className="flex min-h-full flex-col antialiased"
        suppressHydrationWarning
      >
        <AppBackground />
        <DatabaseHealthProvider />
        <TooltipProvider>
          <div className="relative z-10 flex min-h-full flex-col">
            {children}
          </div>
          <DatabaseHealthStatus />
        </TooltipProvider>
      </body>
    </html>
  );
}
