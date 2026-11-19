type SiteSectionHeadProps = {
  /* The heading's id, which its section is labelled by. */
  id: string;
  text: string;
  title: string;
};

/* A front page section's head: its Fredoka title and one paragraph. */
export const SiteSectionHead = ({ id, text, title }: SiteSectionHeadProps) => (
  <header className="mb-5 sm:mb-7">
    <h2 id={id} className="title-page">
      {title}
    </h2>
    <p className="copy-body text-ink-2 sm:text-17 mt-2.5 max-w-[38em] leading-relaxed">
      {text}
    </p>
  </header>
);
