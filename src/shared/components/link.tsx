import NextLink from "next/link";
import type { ComponentProps } from "react";

type LinkProps = ComponentProps<typeof NextLink>;

/*
 * The app's link. Every page is a plain file drawn ahead of time, so
 * Next.js's own prefetch already fetches each link on screen whole (its
 * small per-part files) before the click, and the click opens it at once.
 * A full prefetch (`prefetch`) would ask a server to draw the page, and
 * there is none: it would download the page's HTML instead and the click
 * would go nowhere, so this link never asks for one.
 */
export const Link = ({ prefetch, ...props }: LinkProps) => (
  <NextLink prefetch={prefetch === false ? false : undefined} {...props} />
);
