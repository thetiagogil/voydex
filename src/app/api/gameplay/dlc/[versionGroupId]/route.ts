import { getAvailableDlcs } from "@/services/gameplay/play-dlc";
import { NextResponse } from "next/server";

export async function GET(
  _req: Request,
  { params }: { params: Promise<{ versionGroupId: string }> },
) {
  const { versionGroupId } = await params;
  const vgId = parseInt(versionGroupId, 10);
  if (isNaN(vgId)) {
    return NextResponse.json(
      { error: "Invalid version group ID" },
      { status: 400 },
    );
  }

  const { data, error } = await getAvailableDlcs(vgId);
  if (error) {
    return NextResponse.json(
      { error: error.message ?? String(error) },
      { status: 500 },
    );
  }
  return NextResponse.json(data);
}
