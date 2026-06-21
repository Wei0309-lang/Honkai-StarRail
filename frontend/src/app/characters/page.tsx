"use client";
import { useEffect, useState } from "react";
import Link from "next/link";
import { getCharacters } from "@/lib/api";
import type { Character } from "@/types";

const API_BASE = process.env.NEXT_PUBLIC_API_URL ?? "http://localhost:8000";

export default function AllCharacters() {
  const [characters, setCharacters] = useState<Character[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    getCharacters()
      .then(setCharacters)
      .catch(() => setError("無法載入角色資料，請確認後端服務是否正在運行"))
      .finally(() => setLoading(false));
  }, []);

  if (loading) return <div className="page"><p>載入中...</p></div>;
  if (error) return <div className="page"><p style={{ color: "#f87171" }}>{error}</p></div>;

  return (
    <div className="page">
      <h1>所有角色</h1>
      <div className="card-grid">
        {characters.map((c) => (
          <Link key={c.id} href={`/characters/${c.id}`} className="card">
            {c.photoOfCharacter && (
              <img
                src={`${API_BASE}/img/${c.photoOfCharacter}`}
                alt={c.Name}
                className="card-img"
              />
            )}
            <div className="card-body">
              <h3>{c.Name}</h3>
              <p>{c.belong}</p>
              <p>{c.attribute}</p>
            </div>
          </Link>
        ))}
      </div>
    </div>
  );
}
