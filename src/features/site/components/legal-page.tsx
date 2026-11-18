import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PageHeader } from "@/shared/components/page-header";
import {
  legalTexts,
  legalUpdatedOn,
  type LegalPageKind,
} from "@/features/site/components/legal-text";

/* Paragraphs and lists inside a legal card, at the app's reading size. */
const legalBodyClassName =
  "text-15 text-ink-2 flex flex-col gap-3 leading-relaxed font-semibold [&_li]:pl-1 [&_ul]:flex [&_ul]:list-disc [&_ul]:flex-col [&_ul]:gap-2 [&_ul]:pl-5";

/*
 * Privacy and Terms, from the footer: the short
 * version first, then each part in its own card.
 */
export const LegalPage = ({ kind }: { kind: LegalPageKind }) => {
  const page = legalTexts[kind];

  return (
    <div className="mx-auto flex w-full max-w-189 flex-col">
      <PageHeader
        title={page.title}
        description={page.description}
        note={`Last updated ${legalUpdatedOn}`}
      />
      <div className="mt-7 flex flex-col gap-5">
        <DetailSectionCard title="In short">
          <div className={legalBodyClassName}>{page.summary}</div>
        </DetailSectionCard>
        {page.sections.map((section) => (
          <DetailSectionCard key={section.title} title={section.title}>
            <div className={legalBodyClassName}>{section.body}</div>
          </DetailSectionCard>
        ))}
      </div>
    </div>
  );
};
