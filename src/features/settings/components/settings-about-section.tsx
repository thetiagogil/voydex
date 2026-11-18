import { appRoutes } from "@/config/routes";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { TextLink } from "@/shared/components/text-link";

const aboutLinks = [
  { href: appRoutes.howItWorks, label: "How it works" },
  { href: appRoutes.privacy, label: "Privacy" },
  { href: appRoutes.terms, label: "Terms" },
] as const;

/*
 * About Voydex, at the foot of Settings: the way from inside the app to how
 * it works, Privacy and Terms, and the fan-project notice the site's footer
 * carries.
 */
export const SettingsAboutSection = () => (
  <DetailSectionCard title="About Voydex">
    <nav
      aria-label="About Voydex"
      className="text-15 flex flex-wrap gap-x-5 gap-y-2 py-1.5 font-bold"
    >
      {aboutLinks.map((link) => (
        <TextLink key={link.href} href={link.href}>
          {link.label}
        </TextLink>
      ))}
    </nav>
    <p className="text-ink-2 text-13 mt-2.5 max-w-[80ch] leading-relaxed font-semibold">
      Voydex is an unofficial fan project. It isn&apos;t affiliated with or
      endorsed by Nintendo, Creatures, GAME FREAK or The Pokémon Company, and
      Pokémon names and artwork belong to them.
    </p>
  </DetailSectionCard>
);
