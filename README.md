# Zerodha Clone

A full-stack clone of the Zerodha trading platform built with React.js (frontend), Node.js/Express (backend), and MongoDB (database).

## 🚀 Project Structure

```
ZERODHA CLONE/
├── frontend/          # React.js frontend application
├── backend/           # Node.js/Express backend API
├── dashboard/         # Trading dashboard
└── README.md
```

## 📦 Frontend

The frontend is built with **React.js** and **Bootstrap** for a responsive, modern UI.

### Features
- Landing page with hero section
- Product pages
- Pricing information
- Support portal
- About page
- Responsive design
- Production-ready build

### Quick Start

```bash
cd frontend
npm install
npm start          # Development server
npm run build      # Production build
```

### Production Build

The frontend is **production-ready** with the following optimizations:

✅ Fixed all ESLint errors and warnings  
✅ Optimized bundle size (~2.65 MB)  
✅ Code splitting and lazy loading  
✅ Minified CSS and JavaScript  
✅ Disabled source maps for security  
✅ SEO-friendly HTML structure  

For detailed build and deployment instructions, see [`frontend/BUILD_GUIDE.md`](frontend/BUILD_GUIDE.md)

### Deployment

Use the automated deployment script:

```bash
cd frontend
.\deploy.ps1       # Windows PowerShell
```

Or deploy manually to:
- **Vercel**: `vercel --prod`
- **Netlify**: `netlify deploy --prod --dir=build`
- **GitHub Pages**: `gh-pages -d build`
- **AWS S3**: Upload `build/` folder

## 🔧 Backend

The backend API is built with **Node.js** and **Express**.

### Quick Start

```bash
cd backend
npm install
npm start
```

## 📊 Dashboard

Trading dashboard for managing portfolios and trades.

### Quick Start

```bash
cd dashboard
npm install
npm start
```

## 🛠️ Technologies Used

### Frontend
- React.js 19.2.3
- React Router DOM 7.13.0
- Bootstrap 5.3.8
- Axios 1.13.4
- Font Awesome

### Backend
- Node.js
- Express.js
- MongoDB

## 📝 Development

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn
- MongoDB (for backend)

### Environment Variables

Create `.env` files in respective directories:

**Frontend** (`.env.production`):
```
GENERATE_SOURCEMAP=false
REACT_APP_API_URL=your-api-url
```

**Backend** (`.env`):
```
MONGODB_URI=your-mongodb-uri
PORT=5000
```

## 🚀 Production Deployment

### Frontend Deployment

1. **Build the application**:
   ```bash
   cd frontend
   npm run build
   ```

2. **Deploy to your preferred platform**:
   - See `frontend/BUILD_GUIDE.md` for detailed instructions

### Backend Deployment

Deploy to:
- Heroku
- AWS EC2
- DigitalOcean
- Render
- Railway

## 📄 License

This project is for educational purposes only.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## 📧 Contact

For any queries, please reach out to the project maintainer.

---

**Status**: ✅ Production Ready  
**Last Updated**: January 30, 2026