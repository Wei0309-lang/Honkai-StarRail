"use client";
import { useEffect, useState } from "react";
import { useParams } from "next/navigation";
import Link from "next/link";
import { getCharacterById } from "@/lib/api";
import type { Character } from "@/types";

const API_BASE = "http://localhost:8000";

export default function CharacterDetail() {
  const params = useParams<{ id: string }>();
  const [character, setCharacter] = useState<Character | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!params.id) return;
    getCharacterById(Number(params.id))
      .then(setCharacter)
      .finally(() => setLoading(false));
  }, [params.id]);

  if (loading) return <div className="page"><p>載入中...</p></div>;
  if (!character) return <div className="page"><p>找不到角色</p></div>;

  return (
    <div className="page detail">
      <Link href="/characters">← 返回角色列表</Link>
      <h1>{character.Name}</h1>
      {character.photoOfCharacter && (
        <img
          src={`${API_BASE}/img/${character.photoOfCharacter}`}
          alt={character.Name}
          className="detail-img"
        />
      )}
      <table className="detail-table">
        <tbody>
          <tr><td>所屬</td><td>{character.belong ?? "—"}</td></tr>
          <tr><td>屬性</td><td>{character.attribute ?? "—"}</td></tr>
          <tr><td>已獲得</td><td>{character.pc ? "✓" : "✗"}</td></tr>
          {character.url && (
            <tr>
              <td>Wiki</td>
              <td><a href={character.url} target="_blank" rel="noreferrer">查看詳細資料</a></td>
            </tr>
          )}
        </tbody>
      </table>
    </div>
  );
}
