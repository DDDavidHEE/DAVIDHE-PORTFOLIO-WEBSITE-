# DavidHE Portfolio Website

A modern, feature-rich portfolio website built with Flask, featuring comprehensive SEO, PWA capabilities, and a full blog system.

## ✨ Features

### Core Features
- ✅ **SEO Optimized**: Open Graph, Twitter Cards, Structured Data (JSON-LD), Sitemap, Robots.txt
- ✅ **Contact Form**: Enhanced validation, toast notifications, email notifications
- ✅ **Blog System**: Database-driven blog with pagination, search, and categories
- ✅ **Portfolio/Work**: Filter system, case study pages, GitHub/demo links
- ✅ **Hobbies Gallery**: Lightbox, lazy loading, masonry layout
- ✅ **Skills Section**: Progress bars, animated counters
- ✅ **Animations**: Scroll animations, parallax effects, loading states
- ✅ **Social Features**: Share buttons, testimonials carousel
- ✅ **Image Optimization**: Responsive images, lazy loading
- ✅ **Performance**: Service Worker (PWA), caching, minification ready
- ✅ **Analytics**: Google Analytics integration ready
- ✅ **Additional Sections**: Testimonials, Timeline, Certifications, CV Download
- ✅ **Search**: Global search functionality
- ✅ **Newsletter**: Subscription form with backend
- ✅ **404 Page**: Custom error page
- ✅ **Accessibility**: Enhanced ARIA labels, keyboard navigation, focus management
- ✅ **Multi-language**: Language selector with Google Translate integration

## 🚀 Getting Started

### Prerequisites
- Python 3.8+
- pip

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd "DavidHE Portfolio website"
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Set up environment variables (optional):
```bash
# Create a .env file or set environment variables
export SECRET_KEY='your-secret-key'
export MAIL_SERVER='smtp.gmail.com'
export MAIL_PORT=587
export MAIL_USE_TLS=True
export MAIL_USERNAME='your-email@gmail.com'
export MAIL_PASSWORD='your-app-password'
export CONTACT_EMAIL='davidhoangem@gmail.com'
```

4. Initialize the database:
```bash
python app.py
# The database will be created automatically on first run
```

5. Run the application:
```bash
python app.py
```

6. Open your browser and navigate to:
```
http://localhost:5000
```

## 📁 Project Structure

```
.
├── app.py                 # Flask application
├── requirements.txt      # Python dependencies
├── portfolio.db         # SQLite database (created automatically)
├── templates/
│   ├── index.html       # Main homepage
│   ├── blog.html        # Blog listing page
│   ├── blog_post.html   # Individual blog post
│   ├── work.html        # Portfolio/work listing
│   ├── project.html     # Individual project page
│   ├── search.html      # Search results
│   ├── 404.html         # Custom 404 page
│   ├── sitemap.xml      # Sitemap template
│   └── robots.txt       # Robots.txt template
├── static/
│   ├── css/
│   │   └── style.css    # Main stylesheet
│   ├── js/
│   │   ├── script.js    # Original scripts
│   │   └── enhanced.js # Enhanced features
│   ├── assets/          # Images and media
│   ├── sw.js            # Service Worker (PWA)
│   └── manifest.json    # PWA manifest
└── README.md
```

## 🎨 Customization

### Adding Blog Posts
Blog posts are stored in the database. You can add them via:
- Admin panel (to be implemented)
- Direct database insertion
- API endpoints

### Adding Projects
Projects are stored in the database. Similar to blog posts, you can add them via database or API.

### Styling
All styles are in `static/css/style.css`. The design system uses CSS variables for easy customization:
- Colors: `--mint-*`, `--ink-*`
- Spacing: `--space-*`
- Typography: `--font-*`

### Analytics
To enable Google Analytics, uncomment the GA script in `templates/index.html` and replace `GA_MEASUREMENT_ID` with your actual measurement ID.

## 🔧 Configuration

### Email Settings
Configure email settings via environment variables for contact form notifications:
- `MAIL_SERVER`: SMTP server (default: smtp.gmail.com)
- `MAIL_PORT`: SMTP port (default: 587)
- `MAIL_USE_TLS`: Use TLS (default: True)
- `MAIL_USERNAME`: Your email address
- `MAIL_PASSWORD`: Your app password
- `CONTACT_EMAIL`: Email to receive contact form submissions

### PWA
The site is configured as a Progressive Web App (PWA). Icons should be placed in:
- `static/assets/icon-192.png`
- `static/assets/icon-512.png`

### CV Download
Place your CV PDF at `static/cv.pdf` for the download functionality.

## 📝 Database Models

- **BlogPost**: Blog articles with categories, tags, and publishing status
- **Project**: Portfolio projects with technologies, links, and case studies
- **ContactMessage**: Contact form submissions
- **NewsletterSubscriber**: Newsletter email subscriptions
- **Testimonial**: Client testimonials and reviews

## 🌐 Deployment

### Recommended Platforms
- **Heroku**: Easy Flask deployment
- **PythonAnywhere**: Simple Python hosting
- **DigitalOcean**: Full control
- **AWS/GCP**: Enterprise solutions

### Environment Variables
Set all environment variables in your hosting platform's configuration.

### Database
For production, consider using PostgreSQL instead of SQLite:
```python
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://user:pass@localhost/dbname'
```

## 📄 License

This project is open source and available under the MIT License.

## 👤 Author

**DavidHE**
- Email: davidhoangem@gmail.com
- GitHub: [@DDDavidHEE](https://github.com/DDDavidHEE)
- LinkedIn: [DavidHE](https://www.linkedin.com/in/davidhoangem-davidhe-88694a318/)

## 🙏 Acknowledgments

- Flask community
- All contributors and testers

---

**Note**: This is a comprehensive portfolio website with many features. Customize it to fit your needs!
