import { appRoutes } from "@/config/routes";
import { DexLens } from "@/shared/components/brand/dex-lens";
import { Link } from "@/shared/components/link";
import { TextLink } from "@/shared/components/text-link";

const footerLinks = [
  { href: appRoutes.howItWorks, label: "How it works" },
  { href: appRoutes.codexPokemon, label: "Codex" },
  { href: appRoutes.login, label: "Log in" },
  { href: appRoutes.privacy, label: "Privacy" },
  { href: appRoutes.terms, label: "Terms" },
] as const;

/*
 * The site's footer is the Dex's lower body: the action red, edge to edge,
 * with the stepped edge of the front page's top mirrored along its foot.
 * Inside it, in the page column: the lens with the name, the tagline, a few
 * links (How it works, Codex, Log in, Privacy, Terms) and the fan-project
 * notice. Focus rings turn white on it.
 */
export const SiteFooter = () => (
  <footer className="bg-action relative isolate overflow-hidden rounded-t-[28px] text-white [--focus:var(--surface)] sm:rounded-t-[44px]">
    <span
      aria-hidden
      className="bg-action-deep absolute inset-x-0 bottom-0 -z-1 h-24 [clip-path:polygon(0_22%,54%_22%,60%_0,100%_0,100%_100%,0_100%)]"
    />
    <div className="page-column pt-8 pb-8.5 sm:pt-9">
      <div className="flex flex-col gap-3 sm:flex-row sm:flex-wrap sm:items-center sm:gap-x-4">
        <Link
          href={appRoutes.home}
          className="font-display text-24 focus-ring inline-flex w-fit items-center gap-3 rounded-sm leading-none font-semibold"
        >
          <DexLens className="text-12 size-10" />
          Voydex
        </Link>
        <p className="text-14 font-semibold">
          A Pokédex for your playthroughs.
        </p>
        <nav
          aria-label="Footer"
          className="text-15 flex flex-wrap gap-x-5 gap-y-1.5 sm:ml-auto"
        >
          {footerLinks.map((link) => (
            <TextLink key={link.href} href={link.href} tone="onAction">
              {link.label}
            </TextLink>
          ))}
        </nav>
      </div>
      <p className="text-13 mt-7 max-w-[88ch] leading-relaxed font-semibold">
        Voydex is an unofficial fan project. It isn&apos;t affiliated with or
        endorsed by Nintendo, Creatures, GAME FREAK or The Pokémon Company, and
        Pokémon names and artwork belong to them.
      </p>
    </div>
  </footer>
);
