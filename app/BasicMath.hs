module BasicMath where

    derivative::(Double -> Double) -> Double -> Double -> Double
    derivative f x h = (f (x + h/2) - f (x-h/2)) / h

    integral::Double->(Double -> Double) -> Double -> Double -> Double
    integral dt f a b = sum [f t*dt|t<-[a+dt/2,a+3*dt/2..b-dt/2]]

    integralAD::Double->Double->(Double -> Double) -> Double -> Double -> Double
    integralAD dt f0 f a b = f0 + integral dt f a b