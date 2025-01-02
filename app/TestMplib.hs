import Graphics.Matplotlib

plotFunction :: IO ()
plotFunction = file "function_plot.png" $ plot [-10, -9.9 .. 10] (map sin [-10, -9.9 .. 10])

main :: IO ()
main = plotFunction
