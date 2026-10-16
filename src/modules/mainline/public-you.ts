/*
 * Mainline's public entry for the You page (a global feature that can't
 * import a module): its route reads these figures and passes them in.
 */
export {
  readYouSummary,
  type YouSummary,
} from "@/modules/mainline/features/stats/server/you-summary-reader";
