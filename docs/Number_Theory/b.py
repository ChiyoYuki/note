import matplotlib.pyplot as plt
import matplotlib.patches as patches
import numpy as np

def draw_reciprocity_diagram():
    # 设置参数用于绘图比例 (p, q 取值并不影响标签，只影响长宽比)
    p = 13.0
    q = 9.0 # 使得 q-1/p-1 稍微小于 1，便于观察
    
    # 定义关键坐标值
    x_start, x_mid, x_end = 1, (p+1)/4, (p-1)/2
    y_start, y_mid, y_end = 1, (q+1)/4, (q-1)/2
    
    slope = (q-1) / (p-1)
    
    fig, ax = plt.subplots(figsize=(8, 6))
    
    # 1. 绘制长方形
    width = x_end - x_start
    height = y_end - y_start
    rect = patches.Rectangle((x_start, y_start), width, height, 
                             linewidth=2, edgecolor='black', facecolor='none', zorder=10)
    ax.add_patch(rect)
    
    # 2. 定义平行线和区域 T
    # 假设这两条线对称分布在矩形中心对角线两侧
    # 中心点
    center_x, center_y = (x_start + x_end)/2, (y_start + y_end)/2
    
    # 生成 x 范围
    x = np.linspace(x_start, x_end, 100)
    
    # 定义带状区域的宽度偏移
    offset = 0.5 
    
    # 定义两条直线方程 (过中心点，斜率为 slope，上下偏移)
    # y - center_y = k * (x - center_x) +/- offset
    y_upper = slope * (x - center_x) + center_y + offset
    y_lower = slope * (x - center_x) + center_y - offset
    
    # 3. 填充阴影 T 区域
    # 为了让阴影只在长方形内，我们使用 fill_between 并限制 y 值
    # 注意：fill_between 默认是垂直填充，这里结合 clip 处理
    y_upper_clipped = np.clip(y_upper, y_start, y_end)
    y_lower_clipped = np.clip(y_lower, y_start, y_end)
    
    ax.fill_between(x, y_lower_clipped, y_upper_clipped, color='lightgray', alpha=0.5, label='T')
    
    # 绘制直线本身 (也在长方形范围内)
    # 我们只画出在 y_start 和 y_end 之间的部分
    mask_upper = (y_upper >= y_start) & (y_upper <= y_end)
    mask_lower = (y_lower >= y_start) & (y_lower <= y_end)
    
    # 这里为了简单，直接画全长，视觉上被长方形框住即可，或者手动计算交点
    ax.plot(x, y_upper, color='black', linestyle='-', linewidth=1)
    ax.plot(x, y_lower, color='black', linestyle='-', linewidth=1)

    # 4. 标注区域 A, T, B
    # A 在左上，B 在右下
    ax.text(x_start + width*0.2, y_end - height*0.2, 'A', fontsize=20, fontweight='bold')
    ax.text(center_x - 0.3, center_y - 0.2, 'T', fontsize=20, fontweight='bold') # 稍微偏一点避免挡住中心点
    ax.text(x_end - width*0.2, y_start + height*0.2, 'B', fontsize=20, fontweight='bold')
    
    # 5. 标注特殊点 ((p+1)/4, (q+1)/4)
    pt_x = x_mid
    pt_y = y_mid
    ax.plot(pt_x, pt_y, 'ko', markersize=6, zorder=20) # 黑点
    
    # 画虚线
    # 垂线
    ax.vlines(x=pt_x, ymin=0, ymax=pt_y, colors='black', linestyles='dashed', linewidth=1)
    # 水平线
    ax.hlines(y=pt_y, xmin=0, xmax=pt_x, colors='black', linestyles='dashed', linewidth=1)
    
    # 6. 逆时针旋转箭头
    # 使用 FancyArrowPatch 创建弧形箭头
    style = "Simple, tail_width=0.5, head_width=4, head_length=8"
    kw = dict(arrowstyle=style, color="black")
    # 创建一个弧形路径：中心(pt_x, pt_y)，半径适中
    from matplotlib.patches import FancyArrowPatch
    
    # 这里的 path 是贝塞尔曲线，用于模拟圆弧
    # 起点在右侧，终点在上方 (逆时针)
    # posA, posB, connectionstyle="arc3,rad=.5"
    arrow = FancyArrowPatch((pt_x + 0.3, pt_y), (pt_x, pt_y + 0.3),
                            connectionstyle="arc3,rad=.3", color='black',
                            arrowstyle='->', mutation_scale=15, linewidth=1.5)
    ax.add_patch(arrow)

    # 7. 设置坐标轴
    # 设置刻度位置
    ax.set_xticks([1, x_mid, x_end])
    ax.set_yticks([1, y_mid, y_end])
    
    # 设置刻度标签 (使用 LaTeX 格式)
    ax.set_xticklabels([r'$1$', r'$\frac{p+1}{4}$', r'$\frac{p-1}{2}$'], fontsize=12)
    ax.set_yticklabels([r'$1$', r'$\frac{q+1}{4}$', r'$\frac{q-1}{2}$'], fontsize=12)
    
    # 设置坐标轴范围
    ax.set_xlim(0, x_end + 0.5)
    ax.set_ylim(0, y_end + 0.5)
    
    # 隐藏上边框和右边框的线，但保留长方形
    ax.spines['top'].set_visible(False)
    ax.spines['right'].set_visible(False)
    
    # 移动左、下脊柱到 0 点
    ax.spines['left'].set_position('zero')
    ax.spines['bottom'].set_position('zero')

    # 添加箭头到坐标轴末端 (可选，为了好看)
    ax.plot(1, 0, ">k", transform=ax.get_yaxis_transform(), clip_on=False)
    ax.plot(0, 1, "^k", transform=ax.get_xaxis_transform(), clip_on=False)
    
    plt.xlabel('x', loc='right', fontsize=12)
    plt.ylabel('y', loc='top', rotation=0, fontsize=12)
    
    plt.title('Geometric Visualization', y=1.02)
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    draw_reciprocity_diagram()
