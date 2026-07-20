import { MainlinePlayHistoryTab } from "@/modules/mainline/features/plays/hub/tabs/history/mainline-play-history-tab";
import { OverviewTab } from "@/modules/mainline/features/plays/hub/tabs/overview/overview-tab";
import { MainlinePlayPlansTab } from "@/modules/mainline/features/plays/hub/tabs/plans/mainline-play-plans-tab";
import { MainlinePlayProgressTab } from "@/modules/mainline/features/plays/hub/tabs/progress/mainline-play-progress-tab";
import { MainlinePlaySettingsTab } from "@/modules/mainline/features/plays/hub/tabs/settings/mainline-play-settings-tab";
import { MainlinePlayTeamTab } from "@/modules/mainline/features/plays/hub/tabs/team/mainline-play-team-tab";
import type { MainlinePlayHubData } from "@/modules/mainline/features/plays/hub/types";
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

type MainlinePlayHubTabsProps = {
  data: MainlinePlayHubData;
};

const tabs = [
  { label: "Overview", value: "overview" },
  { label: "Team", value: "team" },
  { label: "Progress", value: "progress" },
  { label: "Plan", value: "plans" },
  { label: "History", value: "history" },
  { label: "Settings", value: "settings" },
] as const;

export const MainlinePlayHubTabs = ({ data }: MainlinePlayHubTabsProps) => {
  return (
    <Card className="bg-card/45 ring-app-surface-border/80 gap-0 py-0 shadow-none">
      <Tabs defaultValue="overview" className="gap-0">
        <CardHeader className="border-app-surface-border/70 rounded-none border-b px-4 py-0 sm:px-5">
          <CardTitle className="sr-only">Play sections</CardTitle>
          <TabsList
            variant="line"
            className="h-auto! w-full justify-start gap-5 overflow-x-auto overflow-y-hidden p-0 sm:gap-7"
          >
            {tabs.map((tab) => (
              <TabsTrigger
                key={tab.value}
                value={tab.value}
                disabled={tab.value !== "overview"}
                className="h-12 min-w-fit flex-none rounded-none px-1"
              >
                {tab.label}
              </TabsTrigger>
            ))}
          </TabsList>
        </CardHeader>

        <CardContent className="p-3 sm:p-4 lg:p-5">
          <TabsContent value="overview">
            <OverviewTab data={data} />
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
