import { firstVisitScript, firstVisitStyles } from "@/shared/utils/first-visit";

/*
 * Goes in the root layout's <head>: marks the once-per-visit reveals this tab
 * has already seen before the page paints, and keeps them still. See
 * `src/shared/utils/first-visit.ts`.
 */
export const FirstVisitGuard = () => (
  <>
    <style dangerouslySetInnerHTML={{ __html: firstVisitStyles }} />
    <script dangerouslySetInnerHTML={{ __html: firstVisitScript }} />
  </>
);
