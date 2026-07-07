import { Separator } from "@/shared/components/ui/separator";

export const RecentHistorySeparator = () => {
  return (
    <div className="grid min-w-0 grid-cols-[4.5rem_minmax(0,1fr)] gap-3 sm:grid-cols-[1.5rem_4.5rem_2.75rem_minmax(0,1fr)_minmax(5rem,auto)]">
      <Separator className="col-span-full sm:col-start-2 sm:col-end-6" />
    </div>
  );
};
