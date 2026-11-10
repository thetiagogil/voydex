import { PageBand } from "@/shared/components/page-band";
import { Progress } from "@/shared/components/ui/progress";
import { Spinner } from "@/shared/components/ui/spinner";

type ProgressStateProps = {
  detail?: string | null;
  /* A bar for work that can say how far it is, 0 to 100. */
  progress?: { label: string; value: number } | null;
  title: string;
};

/*
 * A page waiting on work it can describe (the device database opening, a
 * game downloading): the band every page opens on, then what is happening,
 * with a bar when it can say how far along it is.
 */
export const ProgressState = ({
  detail = null,
  progress = null,
  title,
}: ProgressStateProps) => (
  <>
    <PageBand>
      <div aria-hidden className="h-20 sm:h-24" />
    </PageBand>
    <div
      role="status"
      className="mx-auto flex min-h-60 w-full max-w-sm flex-1 flex-col items-center justify-center gap-3 text-center"
    >
      <Spinner aria-hidden className="text-action size-7" />
      <p className="text-16 text-ink font-bold">{title}</p>
      {detail ? <p className="text-14 text-ink-2">{detail}</p> : null}
      {progress ? (
        <Progress
          aria-label={progress.label}
          className="w-full"
          value={progress.value}
        />
      ) : null}
    </div>
  </>
);
