import {
  HomeDashboard,
  type HomeTrainerCardRender,
} from "@/modules/mainline/features/home/sections/home-dashboard";
import type { HomePageData } from "@/modules/mainline/features/home/types";

type MainlineHomePageProps = {
  data: HomePageData;
  renderTrainerCard: HomeTrainerCardRender;
};

/*
 * Mainline Home: where a trainer lands. One page for everyone: your
 * trainer profile and a row back into your Play; with no Play yet the same
 * profile, empty, with the way to start one in that row's place.
 */
export const MainlineHomePage = ({
  data,
  renderTrainerCard,
}: MainlineHomePageProps) => (
  <HomeDashboard data={data} renderTrainerCard={renderTrainerCard} />
);
