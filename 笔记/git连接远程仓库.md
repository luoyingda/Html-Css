一、创建本地的版本库（就是一个文件夹）

二、git init 将文件夹变为Git可管理仓库
- 文件夹中会多一个 .git 文件夹，它是Git用来跟踪和管理版本库的。
- 如果你看不到，是因为它默认是隐藏文件，那你就需要设置一下让隐藏文件可见。

三、这时候你就可以把你的项目粘贴到这个本地Git仓库里面（粘贴后你可以通过git status来查看你当前的状态），然后通过`git add`把项目添加到仓库（或`git add .`把该目录下的所有文件添加到仓库，注意点是用空格隔开的）。在这个过程中你其实可以一直使用`git status`来查看你当前的状态。

四、用`git commit`把项目提交到仓库。
-  -m后面引号里面是本次提交的注释内容,最好写上

五、创建SSH KEY。先看一下你C盘用户目录下有没有`.ssh目录`，有的话看下里面有没有`id_rsa`和`id_rsa.pub`这两个文件，有就跳到下一步，没有就通过下面命令创建
> $ ssh-keygen -t rsa -C "youremail@example.com"
 然后一路回车。这时你就会在用户下的.ssh目录里找到id_rsa和id_rsa.pub这两个文件。
 [https://img-blog.csdn.net/20170414170253668](https://img-blog.csdn.net/20170414170253668)
 
六、登录Github,找到右上角的图标，打开点进里面的`Settings`，再选中里面的`SSH and GPG KEYS`，点击右上角的`New SSH key`，然后Title里面随便填，再把刚才`id_rsa.pub`里面的内容复制到Title下面的Key内容框里面，最后点击`Add SSH key`，这样就完成了SSH Key的加密。

七、在Github上创建一个Git仓库。
> 可以直接点New repository来创建

八、在Github上创建好Git仓库之后我们就可以和本地仓库进行关联了，根据创建好的Git仓库页面的提示，可以在本地TEST仓库的命令行输入
> $ git remote add origin  仓库地址，
> 注意origin后面加的是你Github上创建好的仓库的地址。

九、关联好之后我们就可以把本地库的所有内容推送到远程仓库（也就是Github）上了，通过
> $ git push -u origin master

由于新建的远程仓库是空的，所以要加上-u这个参数，等远程仓库里面有了内容之后，下次再从本地库上传内容的时候只需下面这样就可以了:
> $ git push origin master