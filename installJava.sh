sudo update-alternatives --install "/usr/bin/java" "java" "/home/b/java/jdk1.8.0_151/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/home/b/java/jdk1.8.0_151/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/home/b/java/jdk1.8.0_151/bin/javaws" 1

sudo update-alternatives --set java /home/b/java/jdk1.8.0_151/bin/java
sudo update-alternatives --set javac /home/b/java/jdk1.8.0_151/bin/javac
sudo update-alternatives --set javaws /home/b/java/jdk1.8.0_151/bin/javaws
