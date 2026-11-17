import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { TextLink } from "@/shared/components/text-link";

export type LegalPageKind = "privacy" | "terms";

export type LegalSection = { body: ReactNode; title: string };

export type LegalText = {
  description: string;
  sections: LegalSection[];
  summary: ReactNode;
  title: string;
};

/* When either text last changed; both pages show it. */
export const legalUpdatedOn = "17 November 2026";

const settings = <TextLink href={appRoutes.settings}>Settings</TextLink>;

/*
 * Privacy and Terms, written from what Voydex really does: user data on the
 * device (ADR 0008), Supabase only for login and the last three backups,
 * Cloudflare for the app and images, nothing else. Change the text here
 * when any of that changes, and move `legalUpdatedOn` with it.
 */
export const legalTexts: Record<LegalPageKind, LegalText> = {
  privacy: {
    title: "Privacy policy",
    description: "What Voydex keeps, where it lives and what you can do.",
    summary: (
      <>
        <p>
          Your Plays, Plans and settings stay on your device. Voydex works
          without an account.
        </p>
        <p>
          If you make an account, Voydex keeps your email and a backup of your
          data, so your other devices can have it too.
        </p>
        <p>No ads, no tracking, and nothing is sold or shared.</p>
      </>
    ),
    sections: [
      {
        title: "On your device",
        body: (
          <>
            <p>
              What you record lives in your browser&apos;s storage on this
              device: your Plays, their Pokémon, progress and notes, your Plans,
              your trainer name and icon, and your settings. Voydex also
              downloads game data there, so it works offline.
            </p>
            <p>
              None of it leaves your device unless you save a backup file or log
              in. Clearing Voydex&apos;s site data in your browser deletes it.
            </p>
          </>
        ),
      },
      {
        title: "With an account",
        body: (
          <>
            <p>An account is optional. If you make one, Voydex keeps:</p>
            <ul>
              <li>
                Your email and password, to log you in. The password is stored
                scrambled, so nobody can read it. Your email is only used for
                account messages: confirming it, resetting your password and
                changing your email.
              </li>
              <li>
                Backups of your data. A few seconds after each change, a copy of
                everything on your device goes to your account, with the kind of
                device it came from (such as &quot;iPhone&quot; or
                &quot;Mac&quot;). Only the last three are kept; older ones are
                deleted. Only you can read them.
              </li>
              <li>
                Sign-in records. The login service notes when you sign in and
                from which IP address, to keep accounts safe.
              </li>
            </ul>
            <p>Logging out leaves your data on the device.</p>
          </>
        ),
      },
      {
        title: "Why, and for how long",
        body: (
          <>
            <p>
              Voydex keeps your account and backups because you asked for them:
              they are the service you signed up for. They stay until you delete
              your account, and then they go too.
            </p>
            <p>
              Sign-in and web host records are kept by those services to run
              Voydex safely, under their own rules.
            </p>
          </>
        ),
      },
      {
        title: "Who handles it",
        body: (
          <>
            <ul>
              <li>
                Supabase runs the login and keeps the backups, on servers in the
                EU (Paris).
              </li>
              <li>
                Cloudflare serves the app and its images. Like any web host, it
                sees your IP address and browser when a page loads.
              </li>
            </ul>
            <p>
              Both are US companies. Where your data leaves the EU, they protect
              it under the EU&apos;s approved terms for data transfers.
            </p>
            <p>
              That&apos;s all. Voydex has no analytics or ads and sets no
              cookies. Besides your data, your browser&apos;s storage only
              remembers your login, so you stay signed in, and small things such
              as the part of Voydex you used last. A shared Plan&apos;s team
              rides in the link itself, so it never reaches a server.
            </p>
          </>
        ),
      },
      {
        title: "Your choices",
        body: (
          <ul>
            <li>
              See and keep a copy of everything by saving a backup file from{" "}
              {settings}. Correct anything by editing it in Voydex.
            </li>
            <li>Change your email or password in {settings}.</li>
            <li>
              Delete what&apos;s on a device by clearing Voydex&apos;s site data
              in that browser.
            </li>
            <li>
              Deleting your account and its backups from {settings} is coming.
              Until then, they stay with your account.
            </li>
            <li>
              If you think Voydex mishandles your data, you can complain to
              Portugal&apos;s data protection authority,{" "}
              <TextLink href="https://www.cnpd.pt">the CNPD</TextLink>.
            </li>
          </ul>
        ),
      },
      {
        title: "Children",
        body: (
          <p>
            Under 13? Ask a parent before making an account. Voydex works fully
            without one.
          </p>
        ),
      },
      {
        title: "Changes",
        body: (
          <>
            <p>
              If this policy changes, this page shows the new text and the date
              at the top moves.
            </p>
            <p>Voydex is a fan project run by one person in Portugal.</p>
          </>
        ),
      },
    ],
  },
  terms: {
    title: "Terms",
    description: "The few rules for using Voydex.",
    summary: (
      <>
        <p>Voydex is a free fan project: no ads, purchases or paid features.</p>
        <p>Your data is yours. Keep a backup, and use Voydex fairly.</p>
        <p>
          It isn&apos;t affiliated with or endorsed by Nintendo, Creatures, GAME
          FREAK or The Pokémon Company.
        </p>
      </>
    ),
    sections: [
      {
        title: "Using Voydex",
        body: (
          <>
            <p>
              Voydex is free, and you don&apos;t need an account to use it. By
              using it, you agree to these terms.
            </p>
            <p>
              Don&apos;t try to break it, overload it or get into anyone
              else&apos;s account. An account used that way can be closed.
            </p>
          </>
        ),
      },
      {
        title: "Your account and data",
        body: (
          <>
            <p>
              Keep your password to yourself. What you record is yours; Voydex
              uses it only to keep your account and backups working, as the{" "}
              <TextLink href={appRoutes.privacy}>Privacy policy</TextLink> says.
            </p>
            <p>
              Your data lives on your device, and browsers can clear it. Save a
              backup file from {settings} now and then, or log in so backups
              happen on their own.
            </p>
          </>
        ),
      },
      {
        title: "Game information",
        body: (
          <p>
            Pokémon facts in Voydex are put together with care, but they can be
            wrong or missing. When it matters, trust the game.
          </p>
        ),
      },
      {
        title: "No guarantees",
        body: (
          <p>
            Voydex comes as it is. It can change, pause or stop, and it
            isn&apos;t responsible for lost data or anything else that goes
            wrong while you use it, as far as the law allows.
          </p>
        ),
      },
      {
        title: "Pokémon",
        body: (
          <p>
            Voydex is an unofficial fan project. Pokémon names, artwork and
            trademarks belong to Nintendo, Creatures, GAME FREAK and The Pokémon
            Company.
          </p>
        ),
      },
      {
        title: "Law",
        body: (
          <p>
            These terms follow Portuguese law. Nothing here takes away the
            rights your own country&apos;s law gives you.
          </p>
        ),
      },
      {
        title: "Changes",
        body: (
          <p>
            If these terms change, this page shows the new text and the date at
            the top moves.
          </p>
        ),
      },
    ],
  },
};
