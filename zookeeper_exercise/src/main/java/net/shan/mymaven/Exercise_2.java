package net.shan.mymaven;

import org.apache.zookeeper.*;

public class Exercise_2 {
    private final static int CLIENT_PORT_1 = 2181;
    private final static int CLIENT_PORT_2 = 2182;
    private final static int CLIENT_PORT_3 = 2183;
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

        ZooKeeper zk2 = new ZooKeeper("192.168.1.103:" + CLIENT_PORT_2,
                TIMEOUT, new Watcher() {
            // 监控所有被触发的事件
            public void process(WatchedEvent event) {
                System.out.println("zk2-->已经触发了" + event.getType() + "事件！");
            }
        });

        ZooKeeper zk3 = new ZooKeeper("192.168.1.103:" + CLIENT_PORT_3,
                TIMEOUT, new Watcher() {
            // 监控所有被触发的事件
            public void process(WatchedEvent event) {
                System.out.println("zk3-->已经触发了" + event.getType() + "事件！");
            }
        });

        // 创建一个目录节点
        if(zk3.exists("/testRootPath", true) == null){
            zk3.create("/testRootPath", new byte[]{'1', '2', '3'}, ZooDefs.Ids.OPEN_ACL_UNSAFE,
                    CreateMode.PERSISTENT);
        }
        if(zk3.exists("/testRootPath/testChildPathOne", true) == null){
            zk3.create("/testRootPath/testChildPathOne", "testChildDataOne".getBytes(),
                    ZooDefs.Ids.OPEN_ACL_UNSAFE, CreateMode.PERSISTENT);
        }

//        // 取出子目录节点列表
//        System.out.println(zk1.getData("/testRootPath", true, null));
//        System.out.println(zk2.getData("/testRootPath", true, null));
//        System.out.println(zk3.getData("/testRootPath", true, null));
        // 修改子目录节点数据
        zk2.setData("/testRootPath", "modifyChildDataOne".getBytes(), -1);

        // 修改子目录节点数据
        zk2.setData("/testRootPath", "t2".getBytes(), -1);

//        System.out.println(zk1.getData("/testRootPath", false, null));
//        // 创建另外一个子目录节点
//        zk.create("/testRootPath/testChildPathTwo", "testChildDataTwo".getBytes(),
//                ZooDefs.Ids.OPEN_ACL_UNSAFE, CreateMode.PERSISTENT);
//        System.out.println(new String(zk.getData("/testRootPath/testChildPathTwo", true, null)));
//        // 删除子目录节点
//        zk.delete("/testRootPath/testChildPathTwo", -1);
//        zk.delete("/testRootPath/testChildPathOne", -1);
        // 删除父目录节点
        zk3.delete("/testRootPath/testChildPathOne", -1);
        zk2.delete("/testRootPath", -1);

        Thread.sleep(3000);

        // 关闭连接
        zk1.close();
        zk2.close();
        zk3.close();

    }
}
