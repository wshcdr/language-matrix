class Functor' f where
   fmap' :: (a -> b) -> f a -> f b

instance Functor' Maybe where
   fmap' f (Just x) = (Just (f x))
   fmap' _ Nothing = Nothing

class (Functor' f) => Applicative' f where
   pure'  :: a -> f a
   (<**>) :: f (a -> b) -> f a -> f b

:instance Applicative' Maybe where
   pure' x = Just x
   (<**>) Nothing Nothing = Nothing
   (<**>) Just(



