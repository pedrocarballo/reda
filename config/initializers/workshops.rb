y = YAML::load(File.read('config/workshops.yaml'))
OPEN_WORKSHOPS = y["open_workshops"]
COMING_WORKSHOPS = y["coming_workshops"]
