import { MainlinePlayHistoryTab } from "@/modules/mainline/features/plays/detail/components/history/mainline-play-history-tab";
import { MainlinePlayOverviewTab } from "@/modules/mainline/features/plays/detail/components/overview/mainline-play-overview-tab";
import { MainlinePlayPlansTab } from "@/modules/mainline/features/plays/detail/components/plans/mainline-play-plans-tab";
import { MainlinePlayProgressTab } from "@/modules/mainline/features/plays/detail/components/progress/mainline-play-progress-tab";
import { MainlinePlaySettingsTab } from "@/modules/mainline/features/plays/detail/components/settings/mainline-play-settings-tab";
import { MainlinePlayTeamTab } from "@/modules/mainline/features/plays/detail/components/team/mainline-play-team-tab";
import type { MainlinePlayPageData } from "@/modules/mainline/features/plays/shared/types";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import {
  Tabs,
  TabsContent,
  TabsList,
  TabsTrigger,
} from "@/shared/components/ui/tabs";

type MainlinePlayDetailTabsProps = {
  data: MainlinePlayPageData;
};

const tabs = [
  { label: "Overview", value: "overview" },
  { label: "Team", value: "team" },
  { label: "Progress", value: "progress" },
  { label: "Plans", value: "plans" },
  { label: "History", value: "history" },
  { label: "Settings", value: "settings" },
] as const;

export const MainlinePlayDetailTabs = ({
  data,
}: MainlinePlayDetailTabsProps) => {
  return (
    <Card className="pt-2">
      <Tabs defaultValue="overview">
        <CardHeader>
          <CardTitle className="sr-only">Play sections</CardTitle>
          <TabsList
            variant="line"
            className="h-auto! w-full flex-wrap justify-start gap-x-1 gap-y-3"
          >
            {tabs.map((tab) => (
              <TabsTrigger
                key={tab.value}
                value={tab.value}
                disabled={tab.value !== "overview"}
                className="h-7 min-w-24 flex-none px-3"
              >
                {tab.label}
              </TabsTrigger>
            ))}
          </TabsList>
        </CardHeader>

        <CardContent className="pt-2">
          <TabsContent value="overview">
            <MainlinePlayOverviewTab data={data} />
          </TabsContent>
          <TabsContent value="team">
            <MainlinePlayTeamTab />
          </TabsContent>
          <TabsContent value="progress">
            <MainlinePlayProgressTab />
          </TabsContent>
          <TabsContent value="plans">
            <MainlinePlayPlansTab />
          </TabsContent>
          <TabsContent value="history">
            <MainlinePlayHistoryTab />
          </TabsContent>
          <TabsContent value="settings">
            <MainlinePlaySettingsTab />
          </TabsContent>
        </CardContent>
      </Tabs>
    </Card>
  );
};
