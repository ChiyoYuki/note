% 清除环境
clc; clear; close all;

% 定义参数 (为了画图示意，取 p, q 为具体的素数，例如 p=11, q=7)
% 注意：这里的 p, q 只是为了生成坐标数值，实际图形是通用的
p = 17; 
q = 11;

% 计算关键坐标点
x_ticks = [1, (p+1)/4, (p-1)/2];
y_ticks = [1, (q+1)/4, (q-1)/2];
x_max = (p-1)/2;
y_max = (q-1)/2;

% 创建图形
figure('Color', 'w');
hold on;
axis equal; % 保持比例一致
box on;

% 设置坐标轴范围
xlim([0, x_max + 1]);
ylim([0, y_max + 1]);

% 绘制长方形边界 (x=1, x=(p-1)/2, y=1, y=(q-1)/2)
rectangle('Position', [1, 1, x_max-1, y_max-1], 'LineWidth', 2, 'EdgeColor', 'k');

% 绘制平行线
% 斜率 m = q/p 或 (q-1)/(p-1)? 题目说是 (q-1)/(p-1)，但为了几何证明通常近似 q/p。
% 题目要求截距为 0.75 (这可能是一个示意性的偏移量，用于创造带状区域 T)
% 假设中心线过原点 y = m*x，实际上题目描述的是穿过矩形的带状区域。
% 我们构造两条线：y = m*x + epsilon 和 y = m*x - epsilon
% 为了让截距看起来像 0.75，我们手动调整直线方程。
% 这里的 0.75 可能指的是相对于某些网格点的偏移。
% 为了严格符合描述 "分别交 x,y 轴于 0.75" (这描述可能有点歧义，通常是指截距)，
% 我们假设是一组平行线夹着对角线。
% 假设中心对角线是 y = ((q-1)/(p-1)) * (x-1) + 1 (过左下角 (1,1))
% 但通常证明里是对角线 y = (q/p)x。
% 这里严格按照描述：斜率 k = (q-1)/(p-1)。
% "交 x,y 轴于 0.75" 可能意味着第一条线过 (0.75, 0)? 第二条线过 (0, 0.75)?
% 或者是指相对于矩形内部的偏移。
% 让我们定义斜率 k
k = (y_max - 1) / (x_max - 1); % 使得对角线刚好穿过矩形对角

% 定义带状区域 T 的边界线
% 这种证明通常涉及 y = (q/p)x 以及 y = (q/p)x + ...
% 按照您的描述 "交 x,y 轴于 0.75" 比较难确切定位，我将画一个以此斜率穿过矩形中心的带子。
% 构造两条线，使得它们包围矩形的对角线，形成区域 T。
delta = 0.8; % 宽度参数
x_vals = linspace(1, x_max, 100);
y_line1 = k * (x_vals - 1) + 1 + delta; % 上方线
y_line2 = k * (x_vals - 1) + 1 - delta; % 下方线

% 填充区域 T (阴影)
% 我们需要计算多边形顶点来填充长方形内的 T 区域
% 简化处理：画出整个带状区域，再用长方形裁剪（或者直接手动定义多边形）
% 这里用 fill 函数填充两条线之间的区域
X_poly = [x_vals, fliplr(x_vals)];
Y_poly = [y_line1, fliplr(y_line2)];
% 注意：为了只显示在长方形内，实际绘图最好裁剪，但为了代码简单，这里直接画出并置于底层，
% 更好的方法是定义剪切区域，但 Octave 简单脚本里我们可以手动限制 Y 值。
Y_poly = max(min(Y_poly, y_max), 1); % 裁剪到矩形上下界
fill(X_poly, Y_poly, [0.9, 0.9, 0.9], 'EdgeColor', 'none'); % 灰色阴影

% 重新画平行线 (黑色实线)
plot(x_vals, y_line1, 'k-', 'LineWidth', 1);
plot(x_vals, y_line2, 'k-', 'LineWidth', 1);

% 标注区域字母 A, T, B
text(1 + (x_max-1)/4, y_max - 0.5, 'A', 'FontSize', 16, 'HorizontalAlignment', 'center');
text((1+x_max)/2, (1+y_max)/2, 'T', 'FontSize', 16, 'HorizontalAlignment', 'center');
text(x_max - 1, 1 + 0.5, 'B', 'FontSize', 16, 'HorizontalAlignment', 'center');

% 标记中心点 ((p+1)/4, (q+1)/4)
cx = (p+1)/4;
cy = (q+1)/4;
plot(cx, cy, 'ko', 'MarkerFaceColor', 'k', 'MarkerSize', 6);

% 画虚线到坐标轴
plot([cx, cx], [0, cy], 'k--'); % 竖直虚线
plot([0, cx], [cy, cy], 'k--'); % 水平虚线

% 逆时针旋转箭头
% 在 (cx, cy) 周围画一段圆弧并加箭头
theta = linspace(pi/6, 3*pi/2, 30);
r = 0.4;
arc_x = cx + r * cos(theta);
arc_y = cy + r * sin(theta);
plot(arc_x, arc_y, 'k-', 'LineWidth', 1);
% 画箭头头
arrow_x = [arc_x(end), arc_x(end)-0.1, arc_x(end)+0.05];
arrow_y = [arc_y(end), arc_y(end)+0.1, arc_y(end)+0.1]; 
% 简单的手动箭头，或者用 quiver
quiver(arc_x(end-1), arc_y(end-1), arc_x(end)-arc_x(end-1), arc_y(end)-arc_y(end-1), ...
       3, 'k', 'MaxHeadSize', 1, 'LineWidth', 1);

% 设置坐标轴刻度
set(gca, 'XTick', x_ticks);
set(gca, 'XTickLabel', {'1', '(p+1)/4', '(p-1)/2'});
set(gca, 'YTick', y_ticks);
set(gca, 'YTickLabel', {'1', '(q+1)/4', '(q-1)/2'});

% 坐标轴标签
xlabel('x');
ylabel('y');

% 去除顶部和右侧的刻度线 (美观)
set(gca, 'box', 'off'); 
% 手动补画矩形框
rectangle('Position', [1, 1, x_max-1, y_max-1], 'LineWidth', 2);

hold off;
