import { getPlayDlcs, setPlayDlcs } from "@/services/gameplay/play-dlc";
import { NextResponse } from "next/server";

export async function GET(
  _req: Request,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: playId } = await params;

  const { data, error } = await getPlayDlcs(playId);
  if (error) {
    return NextResponse.json(
      { error: error.message ?? String(error) },
      { status: 500 },
    );
  }
  return NextResponse.json(data);
}

export async function PUT(
  req: Request,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: playId } = await params;
  const body = await req.json();

  if (!Array.isArray(body.versionGroupIds)) {
    return NextResponse.json(
      { error: "versionGroupIds must be an array" },
      { status: 400 },
    );
  }

  const { success, error } = await setPlayDlcs(playId, body.versionGroupIds);
  if (error) {
    return NextResponse.json(
      { error: error.message ?? String(error) },
      { status: 500 },
    );
  }
  return NextResponse.json({ success });
}
