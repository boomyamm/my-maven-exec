package net.shan.mymaven;


import org.apache.zookeeper.*;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;

public class Exercise_2_3 {
    private final static int CLIENT_PORT_3 = 2183;
    private final static int TIMEOUT = 60000;

    public static void main(String[] args) throws Exception {
        final LinkedBlockingQueue<Node> queue = new LinkedBlockingQueue<>();
        Watcher watcher = new Watcher(){
            @Override
            public void process(WatchedEvent watchedEvent) {
                System.out.println("zk3-->已经触发了" + watchedEvent.getType() + "事件！");
                if(watchedEvent.getType() != Event.EventType.None){
                    try{
                        queue.put(new Node(watchedEvent.getPath(), "data"));
                    }catch (Exception ex){
                        ex.printStackTrace();
                    }
                }
            }
        };
        // 创建一个与服务器的连接
        final ZooKeeper zk3 = new ZooKeeper("192.168.1.103:" + CLIENT_PORT_3, TIMEOUT, watcher);

        ExecutorService service = Executors.newSingleThreadExecutor();
        service.submit(new Runnable() {
            @Override
            public void run() {
                while(true){
                    try{
                        Node node = queue.take();
                        System.out.println("reset watcher...");
                        zk3.exists(node.path, true);
                    } catch(Exception ex){
                        ex.printStackTrace();;
                    }

                }
            }
        });

        // 创建一个目录节点
        if (zk3.exists("/Exercise", true) == null) {
            zk3.create("/Exercise", "shan".getBytes(), ZooDefs.Ids.OPEN_ACL_UNSAFE, CreateMode.PERSISTENT);
        }
        System.out.println("set data 1");
        zk3.setData("/Exercise", "t2".getBytes(), -1);
        System.out.println("set data 2");
        zk3.setData("/Exercise", "t3".getBytes(), -1);

        zk3.delete("/Exercise", -1);

        Thread.sleep(3000);

        // 关闭连接
        zk3.close();

    }


}
class Node {
    public final String path;
    public final String data;
    public Node(String path, String data){
        this.path = path;
        this.data = data;
    }
}
