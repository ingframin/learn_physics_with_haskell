{-# LANGUAGE OverloadedStrings #-}

import Graphics.Rendering.Chart.Easy
import Graphics.Rendering.Chart.Backend.Diagrams

plotFunction :: IO ()
plotFunction = toFile def "function_plot.svg" $ do
    layout_title .= "y = x^2"
    setColors [opaque blue]
    plot (line "y = x^2" [ [(x, x^2) | x <- [-10.0, -9.9 .. 10.0]:: [Double]] ])

main :: IO ()
main = plotFunction
