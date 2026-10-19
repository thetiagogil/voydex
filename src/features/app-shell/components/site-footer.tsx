import Link from "next/link";

import { TextLink } from "@/shared/components/text-link";
import { appRoutes } from "@/config/routes";
import { LogoMark } from "@/shared/components/brand/logo-mark";

const footerLinks = [
  { href: appRoutes.intro, label: "How it works" },
  { href: appRoutes.codexPokemon, label: "Codex" },
  { href: appRoutes.login, label: "Log in" },
  { href: appRoutes.privacy, label: "Privacy" },
  { href: appRoutes.terms, label: "Terms" },
] as const;

/*
 * The signed-out frame's quiet footer (v3 `.pub-foot`): its rule runs the full
 * width, and inside it the name, the catchphrase, a few links (How it works,
 * Codex, Log in, Privacy, Terms) and the fan-project notice line up with the
 * page.
 */
export const SiteFooter = () => (
  <footer className="border-line border-t">
    <div className="page-column pt-6.5 pb-8.5">
      <div className="flex flex-col gap-2.5 sm:flex-row sm:flex-wrap sm:items-center sm:gap-x-5.5">
        <Link
          href={appRoutes.home}
          className="font-display text-17 inline-flex w-fit items-center gap-2.5 rounded-sm font-semibold"
        >
          <LogoMark className="size-7.5" />
          Voydex
        </Link>
        <p className="text-13 text-ink-2 font-semibold">
          Keep the story behind every playthrough.
        </p>
        <nav
          aria-label="Footer"
          className="text-14 text-ink-2 flex flex-wrap gap-x-5 gap-y-1.5 font-bold sm:ml-auto"
        >
          {footerLinks.map((link) => (
            <TextLink key={link.href} href={link.href} tone="quiet">
              {link.label}
            </TextLink>
          ))}
        </nav>
      </div>
      <p className="text-ink-3 text-13 mt-4 max-w-[88ch] leading-relaxed font-semibold">
        Voydex is an unofficial fan project. It isn&apos;t affiliated with or
        endorsed by Nintendo, Creatures, GAME FREAK or The Pokémon Company, and
        Pokémon names and artwork belong to them.
      </p>
    </div>
  </footer>
);
