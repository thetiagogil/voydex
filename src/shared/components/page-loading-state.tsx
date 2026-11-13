import { PageBand } from "@/shared/components/page-band";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type PageLoadingStateProps = {
  /*
   * Opens on the page band (a whole page), or not, for a part of a page
   * whose head stays (a Play's section under the Play's own band).
   */
  band?: boolean;
  className?: string;
  label?: string;
};

/*
 * The shell stays while a page loads: the band every page opens on, so the
 * top bar never sits on bare ground, then one spinner in the content region.
 * A page changes at once to this, and the spinner shows only if the wait
 * is long enough to notice (`appear-late`), so a page read in milliseconds
 * never flashes it.
 */
export const PageLoadingState = ({
  band = true,
  className,
  label = "Loading",
}: PageLoadingStateProps) => {
  return (
    <>
      {band ? (
        <PageBand>
          <div aria-hidden className="h-20 sm:h-24" />
        </PageBand>
      ) : null}
      <div
        aria-busy
        className={cn(
          "flex min-h-60 flex-1 items-center justify-center",
          className,
        )}
      >
        <Spinner
          aria-label={label}
          className="text-action appear-late size-7"
        />
      </div>
    </>
  );
};
