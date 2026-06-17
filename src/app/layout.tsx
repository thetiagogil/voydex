import type { Metadata } from "next";

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
        {children}
      </body>
    </html>
  );
}
