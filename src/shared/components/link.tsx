import NextLink from "next/link";
import type { ComponentProps } from "react";

type LinkProps = ComponentProps<typeof NextLink>;

/*
 * The app's link. Pages read their data on the device, so what the server
 * sends for one is small: a link on screen fetches its whole page ahead of
 * the click, and the click opens it at once. Next.js's own default fetches
 * only the loading state of a page like ours, so the click would still wait
 * on the server.
 */
export const Link = ({ prefetch = true, ...props }: LinkProps) => (
  <NextLink prefetch={prefetch} {...props} />
);
