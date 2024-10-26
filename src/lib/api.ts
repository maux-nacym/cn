const API_BASE_URL = 'http://localhost:3000/api';

export async function fetchNews() {
  const response = await fetch(`${API_BASE_URL}/news`);
  return response.json();
}

export async function fetchProjects() {
  const response = await fetch(`${API_BASE_URL}/projects`);
  return response.json();
}

export async function fetchAnnouncements() {
  const response = await fetch(`${API_BASE_URL}/announcements`);
  return response.json();
}

export async function fetchDownloads() {
  const response = await fetch(`${API_BASE_URL}/downloads`);
  return response.json();
}