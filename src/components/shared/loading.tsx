import { Spinner } from "../ui/spinner";

export const Loading = ({ size = 6 }: { size?: number }) => {
  return (
    <div className="flex items-center justify-center py-4">
      <Spinner className={`size-${size}`} />
    </div>
  );
};
