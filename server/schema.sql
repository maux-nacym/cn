-- Create database
CREATE DATABASE IF NOT EXISTS council_db;
USE council_db;

-- News table
CREATE TABLE IF NOT EXISTS news (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT,
  category VARCHAR(50) NOT NULL,
  thumbnail_url VARCHAR(255),
  date DATE NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Projects table
CREATE TABLE IF NOT EXISTS projects (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  status VARCHAR(50),
  start_date DATE,
  end_date DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Announcements table
CREATE TABLE IF NOT EXISTS announcements (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT,
  priority VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Downloads table
CREATE TABLE IF NOT EXISTS downloads (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  file_url VARCHAR(255) NOT NULL,
  description TEXT,
  category VARCHAR(50),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO news (title, content, category, thumbnail_url, date) VALUES
('އައު ސިޔާސަތެއް އިޢުލާންކުރެވިއްޖެ', 'ސިޔާސަތުގެ ތަފްސީލް...', 'ސިޔާސަތު', '/images/news1.jpg', '2023-05-15'),
('ކައުންސިލުން ތިމާވެށީގެ އިސްނެގުމެއް ފަށައިފި', 'ތިމާވެށީގެ މަޝްރޫޢުގެ ތަފްސީލް...', 'ތިމާވެށި', '/images/news2.jpg', '2023-05-10');

INSERT INTO projects (title, description, status, start_date) VALUES
('ފުނަދޫ އުމްރާނީ ތަރައްޤީ', 'މަގުތަކާއި އާންމު ތަންތަން ރަނގަޅުކުރުން', 'ހިނގަމުންދާ', '2023-01-01'),
('ޑިޖިޓަލް ބަދަލުވުން', 'ކައުންސިލްގެ ޚިދުމަތްތައް ޒަމާނީކުރުން', 'ރޭވިފައި', '2023-06-01');