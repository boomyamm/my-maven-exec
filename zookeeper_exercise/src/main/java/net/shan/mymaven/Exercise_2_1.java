package net.shan.mymaven;

import org.apache.zookeeper.*;

public class Exercise_2_1 {
    private final static int CLIENT_PORT_1 = 2181;
    private final static int TIMEOUT = 60000;
    public static void main(String[] args) throws Exception {
        // 创建一个与服务器的连接
        ZooKeeper zk1 = new ZooKeeper("192.168.1.103:" + CLIENT_PORT_1,
                TIMEOUT, new Watcher() {
            // 监控所有被触发的事件
            public void process(WatchedEvent event) {
                System.out.println("zk1-->已经触发了" + event.getType() + "事件！");
            }
        });

        Thread.sleep(300000);

        // 关闭连接
        zk1.close();

    }
}
