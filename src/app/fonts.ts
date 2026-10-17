import { Nunito } from "next/font/google";

/*
 * Nunito is everything you operate. Fredoka (headings and names) loads from
 * Google Fonts in globals.css: next/font's Turbopack build on Vercel can't
 * resolve Fredoka's font files.
 */
export const nunito = Nunito({
  subsets: ["latin", "latin-ext"],
  variable: "--font-nunito",
  display: "swap",
});
