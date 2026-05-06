import os

base_dir = r"c:\Users\User\Downloads\SEO\web4"
files = [
    "index.html", "about.html", "kpop.html", "jpop.html", "others.html", "contact.html", "product.html",
    r"js\main.js"
]

replacements = {
    # index.html
    "Discover the Sound <br>of the Future": "探索未來的<br>聲音",
    "Premium physical records for K-Pop, J-Pop, and beyond. Step into a visual and auditory journey.": "為 K-Pop、J-Pop 等提供頂級實體唱片。踏上一場視覺與聽覺的饗宴。",
    "Shop Now": "立即選購",
    "精選專輯 (Featured)": "精選專輯",
    
    # footer
    "All rights reserved.": "版權所有。",
    
    # categories
    "韓國專輯 (K-Pop)": "韓國專輯",
    "日本專輯 (J-Pop)": "日本專輯",
    "其它類 (Others)": "其它類",
    
    # contact
    "聯絡我們 (Contact Us)": "聯絡我們",
    "姓名 (Name)": "姓名",
    "電子郵件 (Email)": "電子郵件",
    "訊息 (Message)": "訊息",
    "發送 (Send)": "發送",
    "Message sent successfully!": "訊息已成功發送！",
    
    # about
    "公司簡介 (About Us)": "公司簡介",
    "Welcome to Spinning Records. We believe that music is not just something you hear, but something you experience. Our curated collection of K-Pop, J-Pop, and global albums offers premium visual aesthetics and the highest audio fidelity.": "歡迎來到 Spinning Records。我們相信音樂不僅是用來聆聽的，更是用來體驗的。我們精心挑選的 K-Pop、J-Pop 以及全球專輯，提供最頂級的視覺美學與最高保真度的音質。",
    "Founded in 2026, we aim to bridge the gap between digital streaming and physical collecting by offering visually stunning products for audiophiles and fans worldwide. Immerse yourself in the music.": "成立於 2026 年，我們致力於打破數位串流與實體收藏之間的隔閡，為全球發燒友及粉絲提供視覺驚豔的產品。讓自己沉浸在音樂中吧。",
    "Founded in 2026, we aim to bridge the gap between digital streaming and physical collecting by offering visually stunning products for audiophiles and fans worldwide.": "成立於 2026 年，我們致力於打破數位串流與實體收藏之間的隔閡，為全球發燒友及粉絲提供視覺驚豔的產品。",

    # main.js - buttons & alerts
    "View Details": "查看詳情",
    "Product not found.": "找不到該商品。",
    "Add to Cart": "加入購物車",
    "Item added to cart!": "商品已加入購物車！",

    # main.js - products
    "Neon Cyberpunk Dream": "霓虹賽博龐克之夢",
    "Cyber K-Pop": "賽博 K-Pop",
    "Experience the future of K-Pop with glowing neon sounds and holographic beats.": "體驗 K-Pop 的未來，感受閃耀的霓虹聲效與全息節奏。",
    "Pastel Sparkles": "粉彩火花",
    "Bubblegum Girls": "泡泡糖女孩",
    "A vibrant and cute collection of bubblegum pop anthems.": "充滿活力與可愛的泡泡糖流行頌歌合集。",
    "Midnight Metallic": "午夜金屬",
    "Dark Edgy Boyz": "暗黑前衛男孩",
    "Monochromatic vibes and sleek metallic textures for the edgy soul.": "為前衛靈魂打造的單色氛圍與流線型金屬質感。",
    "Golden Elegance": "金色優雅",
    "Solo Luxe": "奢華獨唱",
    "Luxurious vocals wrapped in gold and marble elegance.": "包裹在金色與大理石優雅中的奢華人聲。",
    "Synthwave Sunset": "合成器日落",
    "Retro Futurists": "復古未來主義者",
    "80s synthwave style riding the grid landscapes of K-Pop.": "乘著 K-Pop 網格景觀的 80 年代合成器浪潮風格。",
    "Celestial Clouds": "星空雲海",
    "Dreamy Vocals": "夢幻人聲",
    "An ethereal journey through clouds and soft watercolor sounds.": "穿梭於雲朵與柔和水彩聲音的空靈之旅。",
    
    "Anime Vibes": "動漫氛圍",
    "Rock Energetics": "搖滾活力",
    "High energy J-Rock that feels like an anime opening.": "宛如動漫片頭曲般的高能量 J-Rock。",
    "City Pop Nights": "城市流行之夜",
    "Retro Skyline": "復古天際線",
    "Minimalist city pop over a retro skyline.": "復古天際線上的極簡城市流行樂。",
    "Cherry Blossom Contrast": "櫻花對比",
    "Trad-Modern": "傳統與現代",
    "Traditional Japanese instruments meet modern neon beats.": "日本傳統樂器與現代霓虹節拍的交會。",
    "Dynamic Primary": "動態原色",
    "Idol Pop Art": "偶像普普藝術",
    "Cute idol energy exploded into pop art colors.": "可愛偶像活力爆發成普普藝術色彩。",
    "Rainy Lo-fi": "雨天 Lo-fi",
    "Cozy Beats": "舒適節拍",
    "Lo-fi hip hop for cozy rooms and rainy windows.": "適合舒適房間與雨天窗景的 Lo-fi 嘻哈。",
    "Dark Roses": "暗黑玫瑰",
    "Visual Kei Drama": "視覺系戲劇",
    "Dramatic visual kei with gothic elements and soaring vocals.": "結合哥德元素與高亢人聲的戲劇化視覺系。",
    
    "Western Pop Sleek": "摩登西方流行",
    "Modern Beats": "現代節拍",
    "Sleek and bold modern western pop hits.": "流暢大膽的現代西方流行金曲。",
    "Vintage Jazz Shapes": "復古爵士形狀",
    "Warm Tones": "溫暖音調",
    "Abstract jazz sounds with a warm vintage feel.": "帶有溫暖復古感的抽象爵士樂聲。",
    "Classical Velvet": "古典天鵝絨",
    "Gold Foil Symphony": "金箔交響曲",
    "Elegant classical performances pressed on premium vinyl.": "壓製於頂級黑膠上的優雅古典演奏。",
    "Neon 3D EDM": "霓虹 3D EDM",
    "Future Dance": "未來舞曲",
    "Abstract 3D EDM tracks to light up your futuristic dance floor.": "點亮未來舞池的抽象 3D EDM 舞曲。"
}

for rel_path in files:
    file_path = os.path.join(base_dir, rel_path)
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()
    
    for old_text, new_text in replacements.items():
        content = content.replace(old_text, new_text)
        
    with open(file_path, "w", encoding="utf-8") as f:
        f.write(content)

print("Translation completed.")
