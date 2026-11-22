import { Nunito } from "next/font/google";

/*
 * Nunito is everything you operate. Baloo 2 (headings and names) loads
 * from Google Fonts in globals.css, as Fredoka did before it: next/font's
 * Turbopack build on Vercel couldn't resolve that family's font files.
 */
export const nunito = Nunito({
  subsets: ["latin", "latin-ext"],
  variable: "--font-nunito",
  display: "swap",
});
