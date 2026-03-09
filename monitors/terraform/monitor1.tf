resource "datadog_monitor" "monitor1" {
  name     = "Test Monitor 1"
  type     = "query alert"
  query    = "avg(last_5m):sum:test.metric{env:prod} >= 1"
  message  = "Test monitor message"

  monitor_thresholds {
    critical = 1
  }
}
