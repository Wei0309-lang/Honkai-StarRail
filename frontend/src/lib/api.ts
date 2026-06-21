import axios from "axios";
import type { Character, Planet } from "@/types";

const api = axios.create({ baseURL: "http://localhost:8000" });

export const getCharacters = (params?: {
  belong?: string;
  attribute?: string;
  pc?: boolean;
}) => api.get<Character[]>("/api/characters/", { params }).then((r) => r.data);

export const getCharacterById = (id: number) =>
  api.get<Character>(`/api/characters/${id}`).then((r) => r.data);

export const getPlanets = () =>
  api.get<Planet[]>("/api/planets/").then((r) => r.data);
