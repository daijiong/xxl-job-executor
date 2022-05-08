# xxl-job-executor
xxl-job执行器
# xxl-job添加执行器步骤
- 在Spring Bean实例中，开发Job方法，方式格式要求为 "public ReturnT<String> execute(String param)"
- 为Job方法添加注解 "@XxlJob(value="自定义jobhandler名称", init = "JobHandler初始化方法", destroy = "JobHandler销毁方法")"，注解value值对应的是调度中心新建任务的JobHandler属性的值。
- 执行日志：需要通过 "XxlJobLogger.log" 打印执行日志；