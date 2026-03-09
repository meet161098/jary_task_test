resource "datadog_monitor" "monitor2" {
  name     = "Test Monitor 2"
  type     = "query alert"
  query    = "avg(last_5m):sum:test.metric{env:prod} >= 1"
  message  = "Test monitor message"

  monitor_thresholds {
    critical = 5
  }
}
