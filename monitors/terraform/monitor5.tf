resource "datadog_monitor" "monitor5" {
  name     = "Test Monitor 5"
  type     = "query alert"
  query    = "avg(last_5m):sum:test.metric{env:prod} >= 1"
  message  = "Test monitor message"

  monitor_thresholds {
    critical = 5  }
}
