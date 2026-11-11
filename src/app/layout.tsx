import { FirstVisitGuard } from "@/shared/components/first-visit-guard";
import { TooltipProvider } from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";
import type { Metadata } from "next";
import { nunito } from "./fonts";
import "./globals.css";

export const metadata: Metadata = {
  appleWebApp: { capable: true, title: "Voydex" },
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
        <TooltipProvider>
          <div className="relative flex min-h-full flex-col">{children}</div>
        </TooltipProvider>
      </body>
    </html>
  );
}
