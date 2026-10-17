import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PageHeader } from "@/shared/components/page-header";
import { TextLink } from "@/shared/components/text-link";
import { PendingData } from "@/shared/components/pending-data";

type LegalPageKind = "privacy" | "terms";

const legalPages: Record<
  LegalPageKind,
  { description: string; pending: string; summary: ReactNode; title: string }
> = {
  privacy: {
    description: "What Voydex keeps about you, and what you can do with it.",
    pending: "The full privacy policy isn't written yet.",
    summary: (
      <>
        <p>
          Voydex keeps the email you log in with and what you record in it: your
          Plays, their Pokémon, progress and notes, and your Plans.
        </p>
        <p>
          You can download all of it as a file from{" "}
          <TextLink href={appRoutes.settings}>Settings</TextLink>.
        </p>
      </>
    ),
    title: "Privacy policy",
  },
  terms: {
    description: "The terms for using Voydex.",
    pending: "The full terms aren't written yet.",
    summary: (
      <p>
        Voydex is an unofficial fan project. It isn&apos;t affiliated with or
        endorsed by Nintendo, Creatures, GAME FREAK or The Pokémon Company, and
        Pokémon names and artwork belong to them.
      </p>
    ),
    title: "Terms",
  },
};

/*
 * Privacy and Terms, from the footer and the sign-up line: what is already
 * true of Voydex, and a marker where the legal text will go.
 */
export const LegalPage = ({ kind }: { kind: LegalPageKind }) => {
  const page = legalPages[kind];

  return (
    <div className="mx-auto flex w-full max-w-189 flex-col">
      <PageHeader title={page.title} description={page.description} />
      <DetailSectionCard title="In short" className="mt-7">
        <div className="text-15 text-ink-2 flex flex-col gap-3 leading-[1.65] font-semibold">
          {page.summary}
        </div>
        {/* TODO(v3-data): the legal text for this page; it needs writing and review before launch. */}
        <PendingData
          className="mt-5"
          label="Not written yet"
          note={page.pending}
        />
      </DetailSectionCard>
    </div>
  );
};
