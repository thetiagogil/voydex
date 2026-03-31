#!/usr/bin/env node

/**
 * Command: db-verify
 * Runs all verification scripts and reports results.
 */

import { getFlag } from "../helpers/cli.js";
import { withClient } from "../helpers/db.js";
import { loadEnvironment } from "../helpers/env.js";
import { logger } from "../helpers/logger.js";

// Verification modules
import { verifyAvailability } from "../verify/verify-availability.js";
import { verifyLearnsets } from "../verify/verify-learnsets.js";
import { verifySeeds } from "../verify/verify-seeds.js";

const VERIFIERS = {
  seeds: verifySeeds,
  availability: verifyAvailability,
  learnsets: verifyLearnsets,
};

async function main() {
  loadEnvironment();
  logger.header("Database Verification");

  const target = getFlag("target");
  const toRun = target ? { [target]: VERIFIERS[target] } : VERIFIERS;

  if (target && !VERIFIERS[target]) {
    logger.failure(`Unknown target: ${target}`);
    logger.info(`Valid targets: ${Object.keys(VERIFIERS).join(", ")}`);
    process.exit(1);
  }

  await withClient(async (client) => {
    let allPassed = true;

    for (const [name, verify] of Object.entries(toRun)) {
      logger.section(`Verifying: ${name}`);
      const result = await verify(client);

      if (result.passed) {
        logger.success(`${name}: ${result.checks} checks passed`);
      } else {
        logger.failure(`${name}: ${result.failures} failures`);
        result.errors.forEach((e) => logger.warning(`  ${e}`));
        allPassed = false;
      }
    }

    if (!allPassed) process.exit(1);
  });
}

main().catch((err) => {
  logger.failure(err.message);
  process.exit(1);
});
