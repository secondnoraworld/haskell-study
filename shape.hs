-- (座標x ,y)の型
data Point = Point Float Float deriving Show

-- (円(中心点, 半径), 長方形(始点, 終点)の2つのデータを持つ形)に関する型
data Shape = Circle Point Float |
             Rectangle Point Point deriving Show

-- 面積を求める
area :: Shape -> Float
area (Circle (Point x y) r) = pi * r ^ 2
area (Rectangle (Point x0 y0) (Point x1 y1)) =
    (abs $ x0 - x1) * (abs $ y0 - y1)
