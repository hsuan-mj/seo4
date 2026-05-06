$dir = "c:\Users\User\Downloads\SEO\web4"
$files = Get-ChildItem -Path $dir -Recurse -Include *.html, *.js

foreach ($f in $files) {
    $content = [System.IO.File]::ReadAllText($f.FullName, [System.Text.Encoding]::UTF8)
    
    $content = $content.Replace("Discover the Sound <br>of the Future", "探索未來的<br>聲音")
    $content = $content.Replace("Premium physical records for K-Pop, J-Pop, and beyond. Step into a visual and auditory journey.", "為 K-Pop、J-Pop 等提供頂級實體唱片。踏上一場視覺與聽覺的饗宴。")
    $content = $content.Replace("Shop Now", "立即選購")
    $content = $content.Replace("精選專輯 (Featured)", "精選專輯")
    $content = $content.Replace("All rights reserved.", "版權所有。")
    
    $content = $content.Replace("公司簡介 (About Us)", "公司簡介")
    $content = $content.Replace("Welcome to Spinning Records. We believe that music is not just something you hear, but something you experience. Our curated collection of K-Pop, J-Pop, and global albums offers premium visual aesthetics and the highest audio fidelity.", "歡迎來到 Spinning Records。我們相信音樂不僅是用來聆聽的，更是用來體驗的。我們精心挑選的 K-Pop、J-Pop 以及全球專輯，提供最頂級的視覺美學與最高保真度的音質。")
    $content = $content.Replace("Founded in 2026, we aim to bridge the gap between digital streaming and physical collecting by offering visually stunning products for audiophiles and fans worldwide. Immerse yourself in the music.", "成立於 2026 年，我們致力於打破數位串流與實體收藏之間的隔閡，為全球發燒友及粉絲提供視覺驚豔的產品。讓自己沉浸在音樂中吧。")
    $content = $content.Replace("Founded in 2026, we aim to bridge the gap between digital streaming and physical collecting by offering visually stunning products for audiophiles and fans worldwide.", "成立於 2026 年，我們致力於打破數位串流與實體收藏之間的隔閡，為全球發燒友及粉絲提供視覺驚豔的產品。")
    
    $content = $content.Replace("韓國專輯 (K-Pop)", "韓國專輯")
    $content = $content.Replace("日本專輯 (J-Pop)", "日本專輯")
    $content = $content.Replace("其它類 (Others)", "其它類")
    
    $content = $content.Replace("聯絡我們 (Contact Us)", "聯絡我們")
    $content = $content.Replace("姓名 (Name)", "姓名")
    $content = $content.Replace("電子郵件 (Email)", "電子郵件")
    $content = $content.Replace("訊息 (Message)", "訊息")
    $content = $content.Replace("發送 (Send)", "發送")
    $content = $content.Replace("Message sent successfully!", "訊息已成功發送！")
    $content = $content.Replace("Message sent!", "訊息已成功發送！")
    
    $content = $content.Replace("Neon Cyberpunk Dream", "霓虹賽博龐克之夢")
    $content = $content.Replace("Cyber K-Pop", "賽博 K-Pop")
    $content = $content.Replace("Experience the future of K-Pop with glowing neon sounds and holographic beats.", "體驗 K-Pop 的未來，感受閃耀的霓虹聲效與全息節奏。")
    
    $content = $content.Replace("Pastel Sparkles", "粉彩火花")
    $content = $content.Replace("Bubblegum Girls", "泡泡糖女孩")
    $content = $content.Replace("A vibrant and cute collection of bubblegum pop anthems.", "充滿活力與可愛的泡泡糖流行頌歌合集。")
    
    $content = $content.Replace("Midnight Metallic", "午夜金屬")
    $content = $content.Replace("Dark Edgy Boyz", "暗黑前衛男孩")
    $content = $content.Replace("Monochromatic vibes and sleek metallic textures for the edgy soul.", "為前衛靈魂打造的單色氛圍與流線型金屬質感。")
    
    $content = $content.Replace("Golden Elegance", "金色優雅")
    $content = $content.Replace("Solo Luxe", "奢華獨唱")
    $content = $content.Replace("Luxurious vocals wrapped in gold and marble elegance.", "包裹在金色與大理石優雅中的奢華人聲。")
    
    $content = $content.Replace("Synthwave Sunset", "合成器日落")
    $content = $content.Replace("Retro Futurists", "復古未來主義者")
    $content = $content.Replace("80s synthwave style riding the grid landscapes of K-Pop.", "乘著 K-Pop 網格景觀的 80 年代合成器浪潮風格。")
    
    $content = $content.Replace("Celestial Clouds", "星空雲海")
    $content = $content.Replace("Dreamy Vocals", "夢幻人聲")
    $content = $content.Replace("An ethereal journey through clouds and soft watercolor sounds.", "穿梭於雲朵與柔和水彩聲音的空靈之旅。")
    
    $content = $content.Replace("Anime Vibes", "動漫氛圍")
    $content = $content.Replace("Rock Energetics", "搖滾活力")
    $content = $content.Replace("High energy J-Rock that feels like an anime opening.", "宛如動漫片頭曲般的高能量 J-Rock。")
    
    $content = $content.Replace("City Pop Nights", "城市流行之夜")
    $content = $content.Replace("Retro Skyline", "復古天際線")
    $content = $content.Replace("Minimalist city pop over a retro skyline.", "復古天際線上的極簡城市流行樂。")
    
    $content = $content.Replace("Cherry Blossom Contrast", "櫻花對比")
    $content = $content.Replace("Trad-Modern", "傳統與現代")
    $content = $content.Replace("Traditional Japanese instruments meet modern neon beats.", "日本傳統樂器與現代霓虹節拍的交會。")
    
    $content = $content.Replace("Dynamic Primary", "動態原色")
    $content = $content.Replace("Idol Pop Art", "偶像普普藝術")
    $content = $content.Replace("Cute idol energy exploded into pop art colors.", "可愛偶像活力爆發成普普藝術色彩。")
    
    $content = $content.Replace("Rainy Lo-fi", "雨天 Lo-fi")
    $content = $content.Replace("Cozy Beats", "舒適節拍")
    $content = $content.Replace("Lo-fi hip hop for cozy rooms and rainy windows.", "適合舒適房間與雨天窗景的 Lo-fi 嘻哈。")
    
    $content = $content.Replace("Dark Roses", "暗黑玫瑰")
    $content = $content.Replace("Visual Kei Drama", "視覺系戲劇")
    $content = $content.Replace("Dramatic visual kei with gothic elements and soaring vocals.", "結合哥德元素與高亢人聲的戲劇化視覺系。")
    
    $content = $content.Replace("Western Pop Sleek", "摩登西方流行")
    $content = $content.Replace("Modern Beats", "現代節拍")
    $content = $content.Replace("Sleek and bold modern western pop hits.", "流暢大膽的現代西方流行金曲。")
    
    $content = $content.Replace("Vintage Jazz Shapes", "復古爵士形狀")
    $content = $content.Replace("Warm Tones", "溫暖音調")
    $content = $content.Replace("Abstract jazz sounds with a warm vintage feel.", "帶有溫暖復古感的抽象爵士樂聲。")
    
    $content = $content.Replace("Classical Velvet", "古典天鵝絨")
    $content = $content.Replace("Gold Foil Symphony", "金箔交響曲")
    $content = $content.Replace("Elegant classical performances pressed on premium vinyl.", "壓製於頂級黑膠上的優雅古典演奏。")
    
    $content = $content.Replace("Neon 3D EDM", "霓虹 3D EDM")
    $content = $content.Replace("Future Dance", "未來舞曲")
    $content = $content.Replace("Abstract 3D EDM tracks to light up your futuristic dance floor.", "點亮未來舞池的抽象 3D EDM 舞曲。")
    
    $content = $content.Replace("View Details", "查看詳情")
    $content = $content.Replace("Product not found.", "找不到該商品。")
    $content = $content.Replace(">Add to Cart<", ">加入購物車<")
    $content = $content.Replace("Item added to cart!", "商品已加入購物車！")

    [System.IO.File]::WriteAllText($f.FullName, $content, [System.Text.Encoding]::UTF8)
}
