meta :task do
  accepts_block_for :run

  template {
    met? { met? { true }; false }
    meet { call_task :run }
  }
end