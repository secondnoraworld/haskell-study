main = do
  cs <- getContents :: IO String
  putStrLn $ unlines . map reverse . lines $ cs

-- lines > map reverse > unlines
