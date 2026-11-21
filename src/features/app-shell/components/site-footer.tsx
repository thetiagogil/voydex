import { appRoutes } from "@/config/routes";
import { FooterLogInLink } from "@/features/app-shell/components/navigation/site-account-action";
import { LogoMark } from "@/shared/components/brand/logo-mark";
import { Link } from "@/shared/components/link";
import { TextLink } from "@/shared/components/text-link";

const footerLinks = [
  { href: appRoutes.howItWorks, label: "How it works" },
  { href: appRoutes.install, label: "Install" },
  { href: appRoutes.codexPokemon, label: "Codex" },
  { href: appRoutes.login, label: "Log in" },
  { href: appRoutes.privacy, label: "Privacy" },
  { href: appRoutes.terms, label: "Terms" },
] as const;

/*
 * The site frame's quiet footer: its rule runs the full width, and inside
 * it the name, the tagline, a few links (How it works, Install, Codex, Log
 * in, Privacy, Terms) and the fan-project notice line up with the page. On
 * a phone the links sit in three even columns, so none is left alone on a
 * line. The page's loud part is its head; the footer is chrome and stays
 * quiet.
 */
export const SiteFooter = () => (
  <footer className="border-line border-t">
    <div className="page-column pt-6.5 pb-8.5">
      <div className="flex flex-col gap-2 sm:flex-row sm:flex-wrap sm:items-baseline sm:gap-x-6">
        <Link
          href={appRoutes.home}
          className="font-display text-17 inline-flex w-fit items-baseline gap-2 rounded-sm font-semibold"
        >
          <LogoMark className="size-7.5 self-center" />
          {/* As tall as the mark, so the name centres on it and the row's words share its baseline. */}
          <span className="leading-7.5">Voydex</span>
        </Link>
        <p className="copy-meta text-ink-2">A Pokédex for your playthroughs.</p>
        <nav
          aria-label="Footer"
          className="copy-note text-ink-2 grid grid-cols-[repeat(3,max-content)] gap-x-6 gap-y-1.5 sm:ml-auto sm:flex sm:flex-wrap sm:gap-x-4"
        >
          {footerLinks.map((link) =>
            /* Log in goes on a browser that is already logged in. */
            link.href === appRoutes.login ? (
              <FooterLogInLink key={link.href} />
            ) : (
              <TextLink key={link.href} href={link.href} tone="quiet">
                {link.label}
              </TextLink>
            ),
          )}
        </nav>
      </div>
      <p className="text-ink-3 copy-meta mt-4 max-w-[88ch] leading-relaxed">
        Voydex is an unofficial fan project. It isn&apos;t affiliated with or
        endorsed by Nintendo, Creatures, GAME FREAK or The Pokémon Company, and
        Pokémon names and artwork belong to them.
      </p>
    </div>
  </footer>
);
