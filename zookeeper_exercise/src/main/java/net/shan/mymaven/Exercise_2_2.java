package net.shan.mymaven;

import org.apache.zookeeper.*;

public class Exercise_2_2 {
    private final static int CLIENT_PORT_2 = 2182;
    private final static int TIMEOUT = 60000;
    public static void main(String[] args) throws Exception {
        // 创建一个与服务器的连接

        ZooKeeper zk2 = new ZooKeeper("192.168.1.103:" + CLIENT_PORT_2,
                TIMEOUT, new Watcher() {
            // 监控所有被触发的事件
            public void process(WatchedEvent event) {
                System.out.println("zk2-->已经触发了" + event.getType() + "事件！");
            }
        });

        Thread.sleep(300000);

        zk2.close();

    }
}
