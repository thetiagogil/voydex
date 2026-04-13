import { setPlayDlcs } from "@/features/play/server/play-dlc";
import { NextRequest, NextResponse } from "next/server";

export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId)
      return NextResponse.json({ error: "Missing play id" }, { status: 400 });

    const { versionGroupIds } = await request.json();

    if (!Array.isArray(versionGroupIds))
      return NextResponse.json(
        { error: "versionGroupIds must be an array" },
        { status: 400 },
      );

    const { success, error } = await setPlayDlcs(playId, versionGroupIds);

    if (error)
      return NextResponse.json(
        { error: "message" in error ? error.message : String(error) },
        { status: 500 },
      );

    return NextResponse.json({ success });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
