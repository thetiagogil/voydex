import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { LogoMark } from "@/shared/components/brand/logo-mark";

const footerLinks = [
  { href: appRoutes.intro, label: "How it works" },
  { href: appRoutes.codexPokemon, label: "Codex" },
] as const;

/*
 * The signed-out frame's quiet footer (v3 `.pub-foot`): its rule runs the full
 * width, and inside it the name, the catchphrase, a few links and the
 * fan-project notice line up with the page.
 */
export const SiteFooter = () => (
  <footer className="border-line border-t">
    <div className="mx-auto w-full max-w-320 px-4 pt-6.5 pb-8.5 sm:px-6 lg:px-8">
      <div className="flex flex-col gap-2.5 sm:flex-row sm:flex-wrap sm:items-center sm:gap-x-5.5">
        <Link
          href={appRoutes.home}
          className="font-display text-17 inline-flex w-fit items-center gap-2.5 rounded-sm font-semibold"
        >
          <LogoMark className="text-15 size-7.5" />
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
            <Link
              key={link.href}
              href={link.href}
              className="hover:text-ink rounded-xs transition-colors"
            >
              {link.label}
            </Link>
          ))}
          <Link
            href={appRoutes.login}
            className="hover:text-ink rounded-xs transition-colors"
          >
            Log in
          </Link>
        </nav>
      </div>
      <p className="text-ink-3 mt-4 max-w-[88ch] text-[12.5px] leading-[1.6] font-semibold">
        Voydex is an unofficial fan project. It isn&apos;t affiliated with or
        endorsed by Nintendo, Creatures, GAME FREAK or The Pokémon Company, and
        Pokémon names and artwork belong to them.
      </p>
    </div>
  </footer>
);
