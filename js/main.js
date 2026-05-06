const products = [
    { id: 'kpop_1', title: 'Neon Cyberpunk Dream', artist: 'Cyber K-Pop', price: 29.99, category: 'kpop', img: 'images/kpop_1.png', desc: 'Experience the future of K-Pop with glowing neon sounds and holographic beats.' },
    { id: 'kpop_2', title: 'Pastel Sparkles', artist: 'Bubblegum Girls', price: 24.99, category: 'kpop', img: 'images/kpop_2.png', desc: 'A vibrant and cute collection of bubblegum pop anthems.' },
    { id: 'kpop_3', title: 'Midnight Metallic', artist: 'Dark Edgy Boyz', price: 27.99, category: 'kpop', img: 'images/kpop_3.png', desc: 'Monochromatic vibes and sleek metallic textures for the edgy soul.' },
    { id: 'kpop_4', title: 'Golden Elegance', artist: 'Solo Luxe', price: 32.99, category: 'kpop', img: 'images/kpop_4.png', desc: 'Luxurious vocals wrapped in gold and marble elegance.' },
    { id: 'kpop_5', title: 'Synthwave Sunset', artist: 'Retro Futurists', price: 25.99, category: 'kpop', img: 'images/kpop_5.png', desc: '80s synthwave style riding the grid landscapes of K-Pop.' },
    { id: 'kpop_6', title: 'Celestial Clouds', artist: 'Dreamy Vocals', price: 28.99, category: 'kpop', img: 'images/kpop_6.png', desc: 'An ethereal journey through clouds and soft watercolor sounds.' },
    
    { id: 'jpop_1', title: 'Anime Vibes', artist: 'Rock Energetics', price: 26.99, category: 'jpop', img: 'images/jpop_1.png', desc: 'High energy J-Rock that feels like an anime opening.' },
    { id: 'jpop_2', title: 'City Pop Nights', artist: 'Retro Skyline', price: 24.99, category: 'jpop', img: 'images/jpop_2.png', desc: 'Minimalist city pop over a retro skyline.' },
    { id: 'jpop_3', title: 'Cherry Blossom Contrast', artist: 'Trad-Modern', price: 29.99, category: 'jpop', img: 'images/jpop_3.png', desc: 'Traditional Japanese instruments meet modern neon beats.' },
    { id: 'jpop_4', title: 'Dynamic Primary', artist: 'Idol Pop Art', price: 23.99, category: 'jpop', img: 'images/jpop_4.png', desc: 'Cute idol energy exploded into pop art colors.' },
    { id: 'jpop_5', title: 'Rainy Lo-fi', artist: 'Cozy Beats', price: 21.99, category: 'jpop', img: 'images/jpop_5.png', desc: 'Lo-fi hip hop for cozy rooms and rainy windows.' },
    { id: 'jpop_6', title: 'Dark Roses', artist: 'Visual Kei Drama', price: 30.99, category: 'jpop', img: 'images/jpop_6.png', desc: 'Dramatic visual kei with gothic elements and soaring vocals.' },
    
    { id: 'other_1', title: 'Western Pop Sleek', artist: 'Modern Beats', price: 22.99, category: 'others', img: 'images/other_1.png', desc: 'Sleek and bold modern western pop hits.' },
    { id: 'other_2', title: 'Vintage Jazz Shapes', artist: 'Warm Tones', price: 25.99, category: 'others', img: 'images/other_2.png', desc: 'Abstract jazz sounds with a warm vintage feel.' },
    { id: 'other_3', title: 'Classical Velvet', artist: 'Gold Foil Symphony', price: 35.99, category: 'others', img: 'images/other_3.png', desc: 'Elegant classical performances pressed on premium vinyl.' },
    { id: 'other_4', title: 'Neon 3D EDM', artist: 'Future Dance', price: 27.99, category: 'others', img: 'images/other_4.png', desc: 'Abstract 3D EDM tracks to light up your futuristic dance floor.' }
];

function createProductCard(product) {
    return `
        <div class="product-card" onclick="window.location.href='product.html?id=${product.id}'">
            <img src="${product.img}" alt="${product.title}" class="product-img">
            <div class="product-title">${product.title}</div>
            <div class="product-artist">${product.artist}</div>
            <div class="product-price">$${product.price}</div>
            <button class="product-btn">View Details</button>
        </div>
    `;
}

function renderCategory(category) {
    const grid = document.getElementById('product-grid');
    if (!grid) return;
    
    const filtered = category === 'all' ? products : products.filter(p => p.category === category);
    grid.innerHTML = filtered.map(p => createProductCard(p)).join('');
}

function renderFeatured() {
    const grid = document.getElementById('featured-grid');
    if (!grid) return;
    
    const featured = [products[0], products[6], products[12], products[4]];
    grid.innerHTML = featured.map(p => createProductCard(p)).join('');
}

function renderProductDetail() {
    const params = new URLSearchParams(window.location.search);
    const id = params.get('id');
    const container = document.getElementById('product-detail-container');
    
    if (!container || !id) return;
    
    const product = products.find(p => p.id === id);
    if (!product) {
        container.innerHTML = '<p>Product not found.</p>';
        return;
    }
    
    container.innerHTML = `
        <img src="${product.img}" alt="${product.title}" class="product-detail-img">
        <div class="product-info">
            <h1>${product.title}</h1>
            <h2>${product.artist}</h2>
            <p>${product.desc}</p>
            <div class="price-tag">$${product.price}</div>
            <button class="btn" onclick="alert('Item added to cart!')">Add to Cart</button>
        </div>
    `;
}

document.addEventListener('DOMContentLoaded', () => {
    if (document.getElementById('featured-grid')) renderFeatured();
    if (document.getElementById('product-detail-container')) renderProductDetail();
    
    const categoryGrid = document.getElementById('product-grid');
    if (categoryGrid) {
        const cat = categoryGrid.getAttribute('data-category');
        renderCategory(cat);
    }
});
