import type { Metadata } from "next";

import {
  DatabaseHealthProvider,
  DatabaseHealthStatus,
} from "@/components/app/database-health-status";
import { TooltipProvider } from "@/components/ui/tooltip";

import "./globals.css";

export const metadata: Metadata = {
  title: "Voydex",
  description: "A Pokemon companion for tracking and planning playthroughs.",
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
        <DatabaseHealthProvider />
        <TooltipProvider>
          {children}
          <DatabaseHealthStatus />
        </TooltipProvider>
      </body>
    </html>
  );
}
