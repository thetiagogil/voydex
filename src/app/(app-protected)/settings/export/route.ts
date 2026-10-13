import { NextResponse } from "next/server";

import { readAccountDataExport } from "@/features/settings/server/account-data-export";

export const dynamic = "force-dynamic";

/* Download your data: the signed-in account's rows as one JSON file. */
export const GET = async () => {
  try {
    const data = await readAccountDataExport();
    const day = data.exportedAt.slice(0, 10);

    return new NextResponse(JSON.stringify(data, null, 2), {
      headers: {
        "Cache-Control": "no-store",
        "Content-Disposition": `attachment; filename="voydex-data-${day}.json"`,
        "Content-Type": "application/json; charset=utf-8",
      },
    });
  } catch {
    return NextResponse.json(
      { error: "Your data couldn't be prepared. Try again in a moment." },
      { headers: { "Cache-Control": "no-store" }, status: 500 },
    );
  }
};
