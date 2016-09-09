main = do
  putStrLn "What is your name?"
  name <- getLine :: IO String
  putStrLn ("Hey " ++ name ++ ", you rock")
