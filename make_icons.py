import zlib, struct, math

def save_png_rgba(path, w, h, pixels):
    raw = bytearray()
    for row in pixels:
        raw.append(0) # filter
        for r, g, b, a in row:
            raw.extend((r, g, b, a))
    compressed = zlib.compress(bytes(raw))
    
    def chunk(tag, data):
        return struct.pack('>I', len(data)) + tag + data + struct.pack('>I', zlib.crc32(tag + data) & 0xffffffff)
    
    png = b'\x89PNG\r\n\x1a\n'
    png += chunk(b'IHDR', struct.pack('>IIBBBBB', w, h, 8, 6, 0, 0, 0))
    png += chunk(b'IDAT', compressed)
    png += chunk(b'IEND', b'')
    with open(path, 'wb') as f:
        f.write(png)

# Generate 32x32 coolant white icon with high-quality supersampling (4x)
def make_coolant(size):
    ss = 4
    W = size * ss
    H = size * ss
    grid = [[0.0]*W for _ in range(H)]
    
    # Scale coordinates
    s = size / 32.0
    
    # Thermometer geometry in supersampled coords:
    # Stem: center x = 14*s*ss
    cx = 14.0 * s * ss
    stem_w = 2.4 * s * ss
    stem_top = 4.0 * s * ss
    stem_bot = 18.0 * s * ss
    
    # Bulb: center = (cx, 20*s*ss), radius = 4.5*s*ss
    bulb_y = 20.0 * s * ss
    bulb_r = 4.5 * s * ss
    
    for y in range(H):
        for x in range(W):
            # check stem
            if stem_top <= y <= stem_bot and abs(x - cx) <= stem_w:
                grid[y][x] = 1.0
            # rounded top cap
            if math.hypot(x - cx, y - stem_top) <= stem_w:
                grid[y][x] = 1.0
            # bulb
            if math.hypot(x - cx, y - bulb_y) <= bulb_r:
                grid[y][x] = 1.0
            
            # Ticks on stem (at y=7 and y=12)
            # Tick 1: y in [7, 8.5], x from cx + stem_w to cx + stem_w + 3.5*s*ss
            t1_y = 8.0 * s * ss
            if abs(y - t1_y) <= 0.8 * s * ss and (cx + stem_w) <= x <= (cx + stem_w + 3.5 * s * ss):
                grid[y][x] = 1.0
            t2_y = 13.0 * s * ss
            if abs(y - t2_y) <= 0.8 * s * ss and (cx + stem_w) <= x <= (cx + stem_w + 3.5 * s * ss):
                grid[y][x] = 1.0
            t3_y = 17.5 * s * ss
            if abs(y - t3_y) <= 0.8 * s * ss and (cx + stem_w) <= x <= (cx + stem_w + 2.5 * s * ss):
                grid[y][x] = 1.0

            # Fluid waves beneath the thermometer
            # Wave 1 at y = 25.5*s*ss
            # Wave 2 at y = 28.5*s*ss
            w_start = 5.0 * s * ss
            w_end = 27.0 * s * ss
            if w_start <= x <= w_end:
                # sine wave
                wave1_center = (25.5 + 0.9 * math.sin((x - w_start) / (3.0 * s * ss))) * s * ss
                if abs(y - wave1_center) <= 0.9 * s * ss:
                    grid[y][x] = 1.0
                wave2_center = (28.8 + 0.9 * math.sin((x - w_start) / (3.0 * s * ss))) * s * ss
                if abs(y - wave2_center) <= 0.9 * s * ss:
                    grid[y][x] = 1.0

    # Downsample
    pixels = []
    for y in range(size):
        row = []
        for x in range(size):
            total = 0.0
            for dy in range(ss):
                for dx in range(ss):
                    total += grid[y*ss + dy][x*ss + dx]
            alpha = int(round((total / (ss*ss)) * 255))
            if alpha > 0:
                row.append((255, 255, 255, alpha))
            else:
                row.append((255, 255, 255, 0))
        pixels.append(row)
    return pixels

# Generate battery white icon (crisp monochrome)
def make_battery(w_out, h_out):
    ss = 4
    W = w_out * ss
    H = h_out * ss
    grid = [[0.0]*W for _ in range(H)]
    
    # Scale
    sx = w_out / 32.0
    sy = h_out / 24.0
    
    # Main body: from x = 4*sx*ss to 28*sx*ss, y = 6*sy*ss to 22*sy*ss
    body_l = 4.0 * sx * ss
    body_r = 28.0 * sx * ss
    body_t = 6.0 * sy * ss
    body_b = 21.0 * sy * ss
    border = 2.0 * sx * ss
    
    # Terminal posts on top:
    # Left post: x = 7 to 11, y = 3 to 6
    # Right post: x = 21 to 25, y = 3 to 6
    p1_l, p1_r = 7.0 * sx * ss, 12.0 * sx * ss
    p2_l, p2_r = 20.0 * sx * ss, 25.0 * sx * ss
    p_t = 2.8 * sy * ss
    
    for y in range(H):
        for x in range(W):
            # Terminals
            if p_t <= y <= body_t:
                if p1_l <= x <= p1_r or p2_l <= x <= p2_r:
                    grid[y][x] = 1.0
            # Body outline
            if body_t <= y <= body_b and body_l <= x <= body_r:
                if (x <= body_l + border or x >= body_r - border or
                    y <= body_t + border or y >= body_b - border):
                    grid[y][x] = 1.0
                # Plus symbol on left
                plus_cx = 10.0 * sx * ss
                plus_cy = (body_t + body_b) / 2.0
                plus_s = 3.0 * sx * ss
                plus_th = 0.9 * sx * ss
                if (abs(x - plus_cx) <= plus_th and abs(y - plus_cy) <= plus_s) or \
                   (abs(y - plus_cy) <= plus_th and abs(x - plus_cx) <= plus_s):
                    grid[y][x] = 1.0
                # Minus symbol on right
                minus_cx = 22.0 * sx * ss
                minus_cy = (body_t + body_b) / 2.0
                minus_s = 3.0 * sx * ss
                minus_th = 0.9 * sx * ss
                if abs(y - minus_cy) <= minus_th and abs(x - minus_cx) <= minus_s:
                    grid[y][x] = 1.0

    pixels = []
    for y in range(h_out):
        row = []
        for x in range(w_out):
            total = 0.0
            for dy in range(ss):
                for dx in range(ss):
                    total += grid[y*ss + dy][x*ss + dx]
            alpha = int(round((total / (ss*ss)) * 255))
            if alpha > 0:
                row.append((255, 255, 255, alpha))
            else:
                row.append((255, 255, 255, 0))
        pixels.append(row)
    return pixels

# Generate mdpi (32x32)
coolant_32 = make_coolant(32)
save_png_rgba('bmw_coolant_white_32.png', 32, 32, coolant_32)

# Generate hdpi (48x48)
coolant_48 = make_coolant(48)
save_png_rgba('bmw_coolant_white_48.png', 48, 48, coolant_48)

# Battery mdpi (32x24)
battery_32 = make_battery(32, 24)
save_png_rgba('bmw_battery_white_32.png', 32, 24, battery_32)

# Battery hdpi (48x36)
battery_48 = make_battery(48, 36)
save_png_rgba('bmw_battery_white_48.png', 48, 36, battery_48)

print("Icons generated successfully!")
