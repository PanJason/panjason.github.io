# Academic Profile Website

This is a Jekyll-based academic profile website similar to yunmingzhang17.github.io.

## Setup

1. Clone this repository
2. Install Jekyll and dependencies:
   ```bash
   bundle install
   ```
3. Run the site locally:
   ```bash
   bundle exec jekyll serve
   ```

## Customization

### Personal Information

Edit `_config.yml` to update your personal information:

```yaml
name: Your Name
position: Your Position/Title
institution: Your Institution
profile_image: /assets/images/profile.jpg
email: your-email@example.com
google_scholar: https://scholar.google.com/citations?user=YOUR_ID
github_username: yourusername
linkedin: your-linkedin-username
twitter: your-twitter-username
```

### Profile Image

Add your profile photo as `assets/images/profile.jpg` (or update the path in `_config.yml`).

### Publications

You can manage publications in two ways:

1. **Using the data file** (recommended): Edit `_data/publications.yml`
2. **Directly in the page**: Edit the publications section in `index.markdown`

### Content Sections

- Edit `index.markdown` to update your bio, research interests, and other content
- Edit `about.markdown` for detailed information
- Add new pages by creating new `.markdown` files

### Styling

The CSS is in `assets/css/style.css`. You can customize:
- Colors
- Fonts  
- Layout
- Spacing
- Responsive behavior

## File Structure

```
├── _config.yml          # Site configuration
├── _data/
│   └── publications.yml # Publications data
├── _includes/
│   ├── head.html        # HTML head section
│   ├── main.html        # Main content wrapper
│   └── publications.html # Publications template
├── _layouts/
│   └── default.html     # Default page layout
├── assets/
│   ├── css/
│   │   └── style.css    # Main stylesheet
│   └── images/          # Images directory
├── index.markdown       # Homepage
└── about.markdown       # About page
```

## Adding New Publications

Edit `_data/publications.yml`:

```yaml
- title: "Your Paper Title"
  authors: ["Your Name", "Co-author"]
  venue: "Conference Name (CONF 2024)"
  year: 2024
  links:
    pdf: "link-to-pdf"
    code: "link-to-code"
    project: "link-to-project"
  award: "Best Paper Award" # Optional
```

## Deployment

This site is configured for GitHub Pages. Simply push to your repository and enable GitHub Pages in the repository settings.
