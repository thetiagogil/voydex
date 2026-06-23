import type { Metadata } from "next";
import { AppBackground } from "@/shared/components/app/app-background";
import {
  DatabaseHealthProvider,
  DatabaseHealthStatus,
} from "@/shared/components/app/database-health-status";
import { ThemeInitScript } from "@/shared/theme/theme-init-script";
import { ThemeProvider } from "@/shared/theme/theme-provider";
import { TooltipProvider } from "@/shared/components/ui/tooltip";
import "./globals.css";
export const metadata: Metadata = {
  title: "Voydex",
  description: "A Pokemon companion for tracking and planning playthroughs.",
};
const RootLayout = ({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) => {
  return (
    <html lang="en" className="h-full" suppressHydrationWarning>
      <head>
        <ThemeInitScript />
      </head>
      <body
        className="flex min-h-full flex-col antialiased"
        suppressHydrationWarning
      >
        <ThemeProvider>
          <AppBackground />
          <DatabaseHealthProvider />
          <TooltipProvider>
            <div className="relative z-10 flex min-h-full flex-col">
              {children}
            </div>
            <DatabaseHealthStatus />
          </TooltipProvider>
        </ThemeProvider>
      </body>
    </html>
  );
};
export default RootLayout;
