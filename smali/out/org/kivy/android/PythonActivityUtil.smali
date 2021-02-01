.class public Lorg/kivy/android/PythonActivityUtil;
.super Ljava/lang/Object;
.source "PythonActivityUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "pythonactivityutil"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mResourceManager:Lorg/renpy/android/ResourceManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/renpy/android/ResourceManager;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resourceManager"    # Lorg/renpy/android/ResourceManager;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kivy/android/PythonActivityUtil;->mResourceManager:Lorg/renpy/android/ResourceManager;

    .line 19
    iput-object v0, p0, Lorg/kivy/android/PythonActivityUtil;->mActivity:Landroid/app/Activity;

    .line 23
    iput-object p1, p0, Lorg/kivy/android/PythonActivityUtil;->mActivity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lorg/kivy/android/PythonActivityUtil;->mResourceManager:Lorg/renpy/android/ResourceManager;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lorg/kivy/android/PythonActivityUtil;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lorg/kivy/android/PythonActivityUtil;

    .line 16
    iget-object v0, p0, Lorg/kivy/android/PythonActivityUtil;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private recursiveDelete(Ljava/io/File;)V
    .registers 6
    .param p1, "f"    # Ljava/io/File;

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 49
    .local v3, "r":Ljava/io/File;
    invoke-direct {p0, v3}, Lorg/kivy/android/PythonActivityUtil;->recursiveDelete(Ljava/io/File;)V

    .line 48
    .end local v3    # "r":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 52
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 53
    return-void
.end method

.method private toastError(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lorg/kivy/android/PythonActivityUtil;->mActivity:Landroid/app/Activity;

    new-instance v1, Lorg/kivy/android/PythonActivityUtil$1;

    invoke-direct {v1, p0, p1}, Lorg/kivy/android/PythonActivityUtil$1;-><init>(Lorg/kivy/android/PythonActivityUtil;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 38
    iget-object v0, p0, Lorg/kivy/android/PythonActivityUtil;->mActivity:Landroid/app/Activity;

    monitor-enter v0

    .line 40
    :try_start_d
    iget-object v1, p0, Lorg/kivy/android/PythonActivityUtil;->mActivity:Landroid/app/Activity;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_17
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    .line 42
    goto :goto_18

    .line 43
    :catchall_15
    move-exception v1

    goto :goto_1a

    .line 41
    :catch_17
    move-exception v1

    .line 43
    :goto_18
    :try_start_18
    monitor-exit v0

    .line 44
    return-void

    .line 43
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    throw v1
.end method


# virtual methods
.method public unpackData(Ljava/lang/String;Ljava/io/File;)V
    .registers 12
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/io/File;

    .line 57
    const-string v0, "pythonactivityutil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNPACKING!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lorg/kivy/android/PythonActivityUtil;->mResourceManager:Lorg/renpy/android/ResourceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/renpy/android/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "dataVersion":Ljava/lang/String;
    const/4 v1, 0x0

    .line 63
    .local v1, "diskVersion":Ljava/lang/String;
    const-string v2, "pythonactivityutil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-nez v0, :cond_53

    .line 67
    return-void

    .line 71
    :cond_53
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "filesDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "diskVersionFn":Ljava/lang/String;
    const/16 v4, 0x40

    :try_start_72
    new-array v4, v4, [B

    .line 76
    .local v4, "buf":[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 77
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 78
    .local v6, "len":I
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v6}, Ljava/lang/String;-><init>([BII)V

    move-object v1, v7

    .line 79
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_87} :catch_88

    .line 82
    .end local v4    # "buf":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "len":I
    goto :goto_8b

    .line 80
    :catch_88
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/Exception;
    const-string v1, ""

    .line 85
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_8b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10d

    .line 86
    const-string v4, "pythonactivityutil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extracting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " assets."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0, p2}, Lorg/kivy/android/PythonActivityUtil;->recursiveDelete(Ljava/io/File;)V

    .line 89
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 91
    new-instance v4, Lorg/renpy/android/AssetExtract;

    iget-object v5, p0, Lorg/kivy/android/PythonActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lorg/renpy/android/AssetExtract;-><init>(Landroid/content/Context;)V

    .line 92
    .local v4, "ae":Lorg/renpy/android/AssetExtract;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/renpy/android/AssetExtract;->extractTar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ed

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not extract "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " data."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/kivy/android/PythonActivityUtil;->toastError(Ljava/lang/String;)V

    .line 98
    :cond_ed
    :try_start_ed
    new-instance v5, Ljava/io/File;

    const-string v6, ".nomedia"

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 101
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 102
    .local v5, "os":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 103
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_106} :catch_107

    .line 106
    .end local v5    # "os":Ljava/io/FileOutputStream;
    goto :goto_10d

    .line 104
    :catch_107
    move-exception v5

    .line 105
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "python"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v4    # "ae":Lorg/renpy/android/AssetExtract;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_10d
    :goto_10d
    return-void
.end method
