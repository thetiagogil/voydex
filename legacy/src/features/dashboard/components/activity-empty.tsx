import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyTitle,
} from "@/shared/components/ui/empty";

export const ActivityEmpty = () => {
  return (
    <Empty>
      <EmptyHeader>
        <EmptyTitle>No recent activity</EmptyTitle>
        <EmptyDescription>
          Start playing to see your progress here!
        </EmptyDescription>
      </EmptyHeader>
    </Empty>
  );
};
